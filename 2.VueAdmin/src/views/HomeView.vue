<template>
	<div class="home_view">
		<div class="projectTitle">欢迎使用 {{projectName}}</div>
		<div class="count_list">
			<el-collapse-transition v-if="btnAuth('feiwudengji','首页总数')">
				<el-card v-show="countTypeList.closefeiwudengjiCountType" class="card_view">
					<template #header>
						<div class="index_card_head">
							<div class="card_head_title">
								废物登记
							</div>
							<div class="card_head_right">
								<el-icon @click="countTypeClick('hiddenfeiwudengjiCountType')" class="showIcons"
									:class="countTypeList.hiddenfeiwudengjiCountType?'showIcons1':''">
									<ArrowUpBold />
								</el-icon>
								<el-icon @click="countTypeClick('closefeiwudengjiCountType')" class="closeIcons">
									<CloseBold />
								</el-icon>
							</div>
							
						</div>
					</template>
					<el-collapse-transition>
						<div class="count_item" v-show="countTypeList.hiddenfeiwudengjiCountType">
							<div class="count_title">废物登记总数</div>
							<div class="count_num">{{feiwudengjiCount}}</div>
						</div>
					</el-collapse-transition>
				</el-card>
			</el-collapse-transition>
		</div>
		<div class="card_list">
			<el-collapse-transition v-if="btnAuth('feiwudengji','首页统计')">
				<el-card v-show="cardTypeList.closefeiwudengjiChartType1" class="card_view">
					<template #header>
						<div class="index_card_head">
							<div class="card_head_title">
								废物登记
							</div>
							<div class="card_head_right">
								<el-icon @click="cardTypeClick('hiddenfeiwudengjiChartType1')" class="showIcons"
									:class="cardTypeList.hiddenfeiwudengjiChartType1?'showIcons1':''">
									<ArrowUpBold />
								</el-icon>
								<el-icon @click="cardTypeClick('closefeiwudengjiChartType1')" class="closeIcons">
									<CloseBold />
								</el-icon>
							</div>
						</div>
					</template>
					<el-collapse-transition>
						<div class="card_item" v-show="cardTypeList.hiddenfeiwudengjiChartType1">
							<div id="feiwudengjifeiwuleibieEchart1" style="width: 100%;height: 400px;"></div>
						</div>
					</el-collapse-transition>
				</el-card>
			</el-collapse-transition>
		</div>
	</div>
</template>

<script setup>
	import {
		inject,
		nextTick,
		ref,
		getCurrentInstance
	} from 'vue';
	const context = getCurrentInstance()?.appContext.config.globalProperties;
	const projectName = context.$project.projectName
	const countTypeList = ref({
	})
	const getCountList=()=>{
		countTypeList.value.closefeiwudengjiCountType = true
		countTypeList.value.hiddenfeiwudengjiCountType = true
		if(btnAuth('feiwudengji','首页总数')){
			getfeiwudengjiCount()
		}
	}
	const feiwudengjiCount = ref(0)
	const getfeiwudengjiCount = () => {
		context?.$http({
			url:'feiwudengji/count',
			method: 'get'
		}).then(res=>{
			feiwudengjiCount.value = res.data.data
		})
	}
	const countTypeClick = (e) => {
		countTypeList.value[e] = !countTypeList.value[e]
	}
	const init=()=>{
		getCountList()
		getCardList()
	}
	//权限验证
	const btnAuth = (e,a)=>{
		return context?.$toolUtil.isAuth(e,a)
	}
	let echarts = inject("echarts")
	const cardTypeClick = (e) =>{
		cardTypeList.value[e] = !cardTypeList.value[e]
		setTimeout(()=>{
			getCardList()
		},1000)
	}
	const cardTypeList = ref({
		closefeiwudengjiChartType1: true,
		hiddenfeiwudengjiChartType1: true,
	})
	const getCardList = () => {
		if(btnAuth('feiwudengji','首页统计')){
			getfeiwudengjiChart1()
		}
	}
	const getfeiwudengjiChart1 = () => {
		nextTick(()=>{
			var feiwuleibieEchart1 = echarts.init(document.getElementById("feiwudengjifeiwuleibieEchart1"),'macarons');
			context?.$http({
				url: "feiwudengji/group/feiwuleibie",
				method: "get",
			}).then(obj=>{
				let res = obj.data.data
				let xAxis = [];
				let yAxis = [];
				let pArray = []
				for(let i=0;i<res.length;i++){
				    xAxis.push(res[i].feiwuleibie);
				    yAxis.push(parseFloat((res[i].total)));
				    pArray.push({
				        value: parseFloat((res[i].total)),
				        name: res[i].feiwuleibie
				    })
				}
				var option = {};
                option = {
                    title: {
                        text: '医疗废物分析',
                        left: 'center'
                    },
                    legend: {
                        orient: 'vertical',
                        left: 'left'
                    },
                    tooltip: {
						trigger: 'item',
						formatter: '{b} : {c} ({d}%)'
                    },
                    series: [
                        {
                            type: 'pie',
                            radius: '55%',
                            center: ['50%', '60%'],
                            data: pArray,
                            emphasis: {
                                itemStyle: {
                                    shadowBlur: 10,
                                    shadowOffsetX: 0,
									shadowColor: 'rgba(0, 0, 0, 0.5)'
                                }
                            }
                        }
                    ]
                };
				feiwuleibieEchart1.clear()
				// 使用刚指定的配置项和数据显示图表。
				feiwuleibieEchart1.setOption(option);
				//根据窗口的大小变动图表
				feiwuleibieEchart1.resize();
			})
		})
	}
	init()
</script>
<style lang="scss">
	.projectTitle{
		padding: 20px 0;
		margin: 20px 0 20px;
		color: #fff;
		font-weight: 500;
		display: flex;
		width: 100%;
		font-size: 24px;
		justify-content: center;
		align-items: center;
		height: auto;
	}

	.showIcons {
		transition: transform 0.3s;
		margin-right: 10px;
	}

	.showIcons1 {
		transform: rotate(-180deg);
	}
	
	// 总数盒子
	.count_list{
		padding: 0 0 0px;
		display: flex;
		width: 100%;
		justify-content: center;
		align-items: flex-start;
		flex-wrap: wrap;
		// 总数card
		.card_view {
			border: 0px solid #eaeaea;
			border-radius: 0;
			box-shadow: 0px 0px 0px rgba(0,0,0,.12);
			margin: 0 1% 30px;
			background: rgba(68,70,79,0.5);
			width: 23%;
			box-sizing: border-box;
			height: auto;
			// card头部
			.el-card__header {
				border: 0px solid #555;
				background: rgba(68,70,79,0);
				width: 100%;
				border-width: 0 0 0px;
				// 头部盒子
				.index_card_head {
					display: flex;
					width: 100%;
					justify-content: space-between;
					align-items: center;
					height: 10px;
					// 标题
					.card_head_title {
						color: #999;
						font-size: 14px;
					}
					// 按钮盒子
					.card_head_right {
						display: flex;
						align-items: center;
						// 按钮
						.el-icon {
							cursor: pointer;
							color: #999;
							font-size: 20px;
						}
					}
				}
			}
			// body
			.el-card__body {
				padding: 0;
				// body盒子
				.count_item{
					padding: 30px;
					text-align: center;
					// 总数标题
					.count_title{
						color: #999;
						font-size: 16px;
						line-height: 2;
					}
					// 总数数字
					.count_num{
						color: #f00;
						font-size: 30px;
						line-height: 2;
					}
				}
			}
		}
	}
	// 首页盒子
	.home_view {
		padding: 0px 20px;
		margin: 0;
		background: url(http://clfile.zggen.cn/20240203/c67dcf19eea04d68bbcfe298e33c6918.png) no-repeat center top / 100% 100% !important;
		width: 100%;
		min-height: 100vh;
		height: auto;
	}
	// 统计图盒子
	.card_list {
		padding: 0 0 20px;
		display: flex;
		width: 100%;
		justify-content: space-between;
		align-items: flex-start;
		flex-wrap: wrap;
		// 统计图card
		.card_view {
			border: 0px solid #eaeaea;
			border-radius: 0;
			box-shadow: 0px 0px 0px rgba(0,0,0,.12);
			margin: 0 1% 40px;
			background: rgba(68,70,79,0.5);
			width: 31%;
			box-sizing: border-box;
			height: auto;
			// 头部
			.el-card__header {
				border: 0px solid rgba(68,70,79,1);
				background: rgba(255, 255, 255, 0);
				width: 100%;
				border-width: 0 0 0px;
				// 头部盒子
				.index_card_head {
					display: flex;
					width: 100%;
					justify-content: space-between;
					align-items: center;
					height: 10px;
					// 标题
					.card_head_title {
						color: #ccc;
						font-size: 14px;
					}
					// 按钮盒子
					.card_head_right {
						display: flex;
						align-items: center;
						// 按钮
						.el-icon{
							cursor: pointer;
							color: #999;
							font-size: 20px;
						}
					}
				}
			}
			// body
			.el-card__body {
				padding: 0;
				// body盒子
				.card_item{
					padding: 30px;
					text-align: center;
				}
			}
		}
	}
</style>
