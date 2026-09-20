<template>
	<div>
		<el-dialog v-model="formVisible" :title="formTitle" width="80%" destroy-on-close :fullscreen='false'>
			<el-form class="formModel_form" ref="formRef" :model="form" label-width="$template2.back.add.form.base.labelWidth" :rules="rules">
				<el-row>
					<el-col :span="12">
						<el-form-item label="处置账号" prop="chuzhizhanghao">
							<el-select
								class="list_sel"
								:disabled="!isAdd||disabledForm.chuzhizhanghao?true:false"
								v-model="form.chuzhizhanghao" 
								placeholder="请选择处置账号"
								@change="chuzhizhanghaoChange">
								<el-option v-for="(item,index) in chuzhizhanghaoLists" :label="item" :value="item">
								</el-option>
							</el-select>
						</el-form-item>
					</el-col>
					<el-col :span="12">
						<el-form-item label="处置员" prop="chuzhiyuan">
							<el-input class="list_inp" v-model="form.chuzhiyuan" placeholder="处置员"
								 type="text" 								:readonly="!isAdd||disabledForm.chuzhiyuan?true:false" />
						</el-form-item>
					</el-col>

					<el-col :span="12">
						<el-form-item label="废物名称" prop="feiwumingcheng">
							<el-input class="list_inp" v-model="form.feiwumingcheng" placeholder="废物名称"
								 type="text" 								:readonly="!isAdd||disabledForm.feiwumingcheng?true:false" />
						</el-form-item>
					</el-col>

					<el-col :span="12">
						<el-form-item label="废物类别" prop="feiwuleibie">
							<el-input class="list_inp" v-model="form.feiwuleibie" placeholder="废物类别"
								 type="text" 								:readonly="!isAdd||disabledForm.feiwuleibie?true:false" />
						</el-form-item>
					</el-col>

					<el-col :span="12">
						<el-form-item label="存储地点" prop="cunchudidian">
							<el-input class="list_inp" v-model="form.cunchudidian" placeholder="存储地点"
								 type="text" 								:readonly="!isAdd||disabledForm.cunchudidian?true:false" />
						</el-form-item>
					</el-col>

					<el-col :span="12">
						<el-form-item label="存储时间" prop="cunchushijian">
							<el-date-picker
								class="list_date"
								v-model="form.cunchushijian"
								format="YYYY 年 MM 月 DD 日"
								value-format="YYYY-MM-DD"
								type="datetime"
								:readonly="!isAdd||disabledForm.cunchushijian?true:false"
								placeholder="请选择存储时间" />
						</el-form-item>
					</el-col>
					<el-col :span="12">
						<el-form-item label="转运账号" prop="zhuanyunzhanghao">
							<el-input class="list_inp" v-model="form.zhuanyunzhanghao" placeholder="转运账号"
								 type="text" 								:readonly="!isAdd||disabledForm.zhuanyunzhanghao?true:false" />
						</el-form-item>
					</el-col>

					<el-col :span="12">
						<el-form-item label="转运员" prop="zhuanyunyuan">
							<el-input class="list_inp" v-model="form.zhuanyunyuan" placeholder="转运员"
								 type="text" 								:readonly="!isAdd||disabledForm.zhuanyunyuan?true:false" />
						</el-form-item>
					</el-col>

				</el-row>
			</el-form>
			<template #footer v-if="isAdd||type=='logistics'||type=='reply'">
				<span class="formModel_btn_box">
					<el-button class="formModel_cancel" @click="closeClick">取消</el-button>
					<el-button class="formModel_confirm" type="primary" @click="save"
						>
						提交
					</el-button>
				</span>
			</template>
		</el-dialog>
	</div>
</template>
<script setup>
	import {
		reactive,
		ref,
		getCurrentInstance,
		nextTick,
		computed,
		defineEmits
	} from 'vue'
	const context = getCurrentInstance()?.appContext.config.globalProperties;	
	const emit = defineEmits(['formModelChange'])
	//基础信息
	const tableName = 'feiwucunchu'
	const formName = '废物存储'
	//基础信息
	//form表单
	const form = ref({})
	const disabledForm = ref({
		chuzhizhanghao : false,
		chuzhiyuan : false,
		feiwumingcheng : false,
		feiwuleibie : false,
		cunchudidian : false,
		cunchushijian : false,
		zhuanyunzhanghao : false,
		zhuanyunyuan : false,
	})
	const formVisible = ref(false)
	const isAdd = ref(false)
	const formTitle = ref('')
	//表单验证
	//匹配整数
	const validateIntNumber = (rule, value, callback) => {
		if (!value) {
			callback();
		} else if (!context?.$toolUtil.isIntNumer(value)) {
			callback(new Error("请输入整数"));
		} else {
			callback();
		}
	}
	//匹配数字
	const validateNumber = (rule, value, callback) => {
		if(!value){
			callback();
		} else if (!context?.$toolUtil.isNumber(value)) {
			callback(new Error("请输入数字"));
		} else {
			callback();
		}
	}
	//匹配手机号码
	const validateMobile = (rule, value, callback) => {
		if(!value){
			callback();
		} else if (!context?.$toolUtil.isMobile(value)) {
			callback(new Error("请输入正确的手机号码"));
		} else {
			callback();
		}
	}
	//匹配电话号码
	const validatePhone = (rule, value, callback) => {
		if(!value){
			callback();
		} else if (!context?.$toolUtil.isPhone(value)) {
			callback(new Error("请输入正确的电话号码"));
		} else {
			callback();
		}
	}
	//匹配邮箱
	const validateEmail = (rule, value, callback) => {
		if(!value){
			callback();
		} else if (!context?.$toolUtil.isEmail(value)) {
			callback(new Error("请输入正确的邮箱地址"));
		} else {
			callback();
		}
	}
	//匹配身份证
	const validateIdCard = (rule, value, callback) => {
		if(!value){
			callback();
		} else if (!context?.$toolUtil.checkIdCard(value)) {
			callback(new Error("请输入正确的身份证号码"));
		} else {
			callback();
		}
	}
	//匹配网站地址
	const validateUrl = (rule, value, callback) => {
		if(!value){
			callback();
		} else if (!context?.$toolUtil.isURL(value)) {
			callback(new Error("请输入正确的URL地址"));
		} else {
			callback();
		}
	}
	const rules = ref({
		chuzhizhanghao: [
		],
		chuzhiyuan: [
		],
		feiwumingcheng: [
		],
		feiwuleibie: [
		],
		cunchudidian: [
		],
		cunchushijian: [
		],
		zhuanyunzhanghao: [
		],
		zhuanyunyuan: [
		],
	})
	//表单验证
	
	const formRef = ref(null)
	const id = ref(0)
	const type = ref('')
	//处置账号列表
	const chuzhizhanghaoLists = ref([])
	//methods

	//获取唯一标识
	const getUUID =()=> {
      return new Date().getTime();
    }
	//重置
	const resetForm = () => {
		form.value = {
			chuzhizhanghao: '',
			chuzhiyuan: '',
			feiwumingcheng: '',
			feiwuleibie: '',
			cunchudidian: '',
			cunchushijian: '',
			zhuanyunzhanghao: '',
			zhuanyunyuan: '',
		}
	}
	//获取info
	const getInfo = ()=>{
		context?.$http({
			url: `${tableName}/info/${id.value}`,
			method: 'get'
		}).then(res => {
			let reg=new RegExp('../../../file','g')
			form.value = res.data.data
			formVisible.value = true
		})
	}
	const crossRow = ref('')
	const crossTable = ref('')
	const crossTips = ref('')
	const crossColumnName = ref('')
	const crossColumnValue = ref('')
	//初始化
	const init=(formId=null,formType='add',formNames='',row=null,table=null,statusColumnName=null,tips=null,statusColumnValue=null)=>{
		resetForm()
			form.value.cunchushijian = context?.$toolUtil.getCurDate()
		if(formId){
			id.value = formId
			type.value = formType
		}
		if(formType == 'add'){
			isAdd.value = true
			formTitle.value = '新增' + formName
			formVisible.value = true
		}else if(formType == 'info'){
			isAdd.value = false
			formTitle.value = '查看' + formName
			getInfo()
		}else if(formType == 'edit'){
			isAdd.value = true
			formTitle.value = '修改' + formName
			getInfo()
		}
		else if(formType == 'cross'){
			isAdd.value = true
			formTitle.value = formNames
			// getInfo()
			for(let x in row){
				if(x=='chuzhizhanghao'){
					form.value.chuzhizhanghao = row[x];
					disabledForm.value.chuzhizhanghao = true;
					continue;
				}
				if(x=='chuzhiyuan'){
					form.value.chuzhiyuan = row[x];
					disabledForm.value.chuzhiyuan = true;
					continue;
				}
				if(x=='feiwumingcheng'){
					form.value.feiwumingcheng = row[x];
					disabledForm.value.feiwumingcheng = true;
					continue;
				}
				if(x=='feiwuleibie'){
					form.value.feiwuleibie = row[x];
					disabledForm.value.feiwuleibie = true;
					continue;
				}
				if(x=='cunchudidian'){
					form.value.cunchudidian = row[x];
					disabledForm.value.cunchudidian = true;
					continue;
				}
				if(x=='cunchushijian'){
					form.value.cunchushijian = row[x];
					disabledForm.value.cunchushijian = true;
					continue;
				}
				if(x=='zhuanyunzhanghao'){
					form.value.zhuanyunzhanghao = row[x];
					disabledForm.value.zhuanyunzhanghao = true;
					continue;
				}
				if(x=='zhuanyunyuan'){
					form.value.zhuanyunyuan = row[x];
					disabledForm.value.zhuanyunyuan = true;
					continue;
				}
			}
			if(row){
				crossRow.value = row
			}
			if(table){
				crossTable.value = table
			}
			if(tips){
				crossTips.value = tips
			}
			if(statusColumnName){
				crossColumnName.value = statusColumnName
			}
			if(statusColumnValue){
				crossColumnValue.value = statusColumnValue
			}
			formVisible.value = true
		}

		context?.$http({
			url: `${context?.$toolUtil.storageGet('sessionTable')}/session`,
			method: 'get'
		}).then(res => {
			var json = res.data.data
			if(json.hasOwnProperty('zhuanyunzhanghao')&& context?.$toolUtil.storageGet("role")!="管理员"){
				form.value.zhuanyunzhanghao = json.zhuanyunzhanghao
				disabledForm.value.zhuanyunzhanghao = true;
			}
			if(json.hasOwnProperty('zhuanyunyuan')&& context?.$toolUtil.storageGet("role")!="管理员"){
				form.value.zhuanyunyuan = json.zhuanyunyuan
				disabledForm.value.zhuanyunyuan = true;
			}
		})
		context?.$http({
			url: `option/chuzhiyuan/chuzhizhanghao`,
			method: 'get'
		}).then(res=>{
			chuzhizhanghaoLists.value = res.data.data
		})
		//由上级字段带出不可改
		disabledForm.value.chuzhiyuan = true;
	}
	//初始化
	//声明父级调用
	defineExpose({
		init
	})
	//关闭
	const closeClick = () => {
		formVisible.value = false
	}
	const chuzhizhanghaoChange=()=>{
		context?.$http({
			url: `follow/chuzhiyuan/chuzhizhanghao?columnValue=` + form.value.chuzhizhanghao,
			method: 'get'
		}).then(res=>{
			if(res.data.data.chuzhiyuan){
				form.value.chuzhiyuan = res.data.data.chuzhiyuan
			}
		})
	}
	//富文本
	const editorChange = (e,name) =>{
		form.value[name] = e
	}
	//提交
	const save=()=>{
		var table = crossTable.value
		var objcross = JSON.parse(JSON.stringify(crossRow.value))
		let crossUserId = ''
		let crossRefId = ''
		let crossOptNum = ''
		if(type.value == 'cross'){
			if(crossColumnName.value!=''){
				if(!crossColumnName.value.startsWith('[')){
					for(let o in objcross){
						if(o == crossColumnName.value){
							objcross[o] = crossColumnValue.value
						}
					}
					//修改跨表数据
					changeCrossData(objcross)
				}else{
					crossUserId = context?.$toolUtil.storageGet('userid')
					crossRefId = objcross['id']
					crossOptNum = crossColumnName.value.replace(/\[/,"").replace(/\]/,"")
				}
			}
		}
		formRef.value.validate((valid)=>{
			if(valid){
				if(crossUserId&&crossRefId){
					form.value.crossuserid = crossUserId
					form.value.crossrefid = crossRefId
					let params = {
						page: 1,
						limit: 1000, 
						crossuserid:form.value.crossuserid,
						crossrefid:form.value.crossrefid,
					}
					context?.$http({
						url: `${tableName}/page`,
						method: 'get', 
						params: params 
					}).then(res=>{
						if(res.data.data.total>=crossOptNum){
							context?.$toolUtil.message(`${crossTips.value}`,'error')
							return false
						}else{
							context?.$http({
								url: `${tableName}/${!form.value.id ? "save" : "update"}`,
								method: 'post', 
								data: form.value 
							}).then(res=>{
								context?.$toolUtil.message(`操作成功`,'success',()=>{
									formVisible.value = false
									emit('formModelChange')
								})
							})
						}
					})
				}else{
					context?.$http({
						url: `${tableName}/${!form.value.id ? "save" : "update"}`,
						method: 'post', 
						data: form.value 
					}).then(res=>{
						context?.$toolUtil.message(`操作成功`,'success',()=>{
							formVisible.value = false
							emit('formModelChange')
						})
					})
				}
			}
		})
	}
	//修改跨表数据
	const changeCrossData=(row)=>{
		context?.$http({
			url: `${crossTable.value}/update`,
			method: 'post',
			data: row
		}).then(res=>{})
	}
</script>
<style lang="scss" scoped>
	// 表单
	.formModel_form{
		border: 0px solid rgba(254, 182, 203, 0.5);
		border-radius: 0px;
		padding: 40px 30px;
		margin: 0;
		background: #fff;
		// form item
		:deep(.el-form-item) {
			margin: 0 150px 20px 0;
			background: none;
			display: flex;
			//label
			.el-form-item__label {
			 color: #666;
			 background: none;
			 font-weight: 500;
			 display: block;
			 width: 150px;
			 text-align: right;
			 min-width: 150px;
			}
			// 内容盒子
			.el-form-item__content {
				display: flex;
				width: calc(100% - 120px);
				justify-content: flex-start;
				align-items: center;
				flex-wrap: wrap;
				// 输入框
				.list_inp {
					border: 1px solid rgba(255, 255, 255, 0.25);
					border-radius: 0px;
					padding: 0 10px;
					color: #666;
					background: rgba(0, 0, 0, 0.1);
					width: auto;
					line-height: 36px;
					box-sizing: border-box;
					min-width: 350px;
					height: 36px;
					//去掉默认样式
					.el-input__wrapper{
						border: none;
						box-shadow: none;
						background: none;
						border-radius: 0;
						height: 100%;
						padding: 0;
					}
					.is-focus {
						box-shadow: none !important;
					}
				}
				//日期选择器
				.list_date {
					border: 1px solid rgba(255, 255, 255, 0.25);
					border-radius: 0px;
					color: #666;
					background: rgba(0, 0, 0, 0.1);
					width: auto;
					line-height: 36px;
					box-sizing: border-box;
					min-width: 250px;
					//去掉默认样式
					.el-input__wrapper{
						border: none;
						box-shadow: none;
						background: none;
						border-radius: 0;
						height: 100%;
					}
				}
				// 下拉框
				.list_sel {
					border: 1px solid rgba(255, 255, 255, 0.25);
					border-radius: 0px;
					padding: 0 10px;
					color: #666;
					background: rgba(0, 0, 0, 0.1);
					width: auto;
					line-height: 36px;
					box-sizing: border-box;
					min-width: 300px;
					//去掉默认样式
					.select-trigger{
						height: 100%;
						.el-input{
							height: 100%;
							.el-input__wrapper{
								border: none;
								box-shadow: none;
								background: none;
								border-radius: 0;
								height: 100%;
								padding: 0;
							}
							.is-focus {
								box-shadow: none !important;
							}
						}
					}
				}
			}
		}
	}
	// 按钮盒子
	.formModel_btn_box {
		display: flex;
		width: 100%;
		justify-content: center;
		align-items: center;
		.formModel_cancel {
			border: 1px solid #d43f3a;
			cursor: pointer;
			border-radius: 3px;
			padding: 0 24px;
			margin: 0 20px 0 0;
			outline: none;
			color: #fff;
			background: rgba(217, 83, 79, 0.45);
			width: auto;
			font-size: 14px;
			min-width: 100px;
			height: 36px;
		}
		.formModel_cancel:hover {
		}
		
		.formModel_confirm {
			border: 1px solid #357ebd;
			cursor: pointer;
			border-radius: 3px;
			padding: 0 24px;
			margin: 0 20px 0 0;
			outline: none;
			color: #fff;
			background: rgba(66, 139, 202, 0.55);
			width: auto;
			font-size: 14px;
			min-width: 100px;
			height: 36px;
		}
		.formModel_confirm:hover {
		}
	}
</style>