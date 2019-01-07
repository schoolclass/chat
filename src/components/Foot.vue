<template>
	<footer>
		{{system.copyright}}
	</footer>
</template>
<script>
export default{
	name:"foot",
	props:{
		system:Object
	}
}
</script>
<style scoped>
	footer{
		padding: 25px 0;
		text-align: center;
	}
</style>