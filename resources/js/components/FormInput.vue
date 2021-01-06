<template>
    <form id="signup-form">
        <div class="row">
            <div class="col-12 form-group">
                <label class="col-form-label col-form-label-lg">ID <span class="text-danger">*</span></label>
                <input type="text" class="form-control form-control-lg">
            </div>
            <div class="col-12 form-group">
                <label class="col-form-label col-form-label-lg">Nama <span class="text-danger">*</span></label>
                <input type="text" class="form-control form-control-lg">
            </div>
            <div class="col-12 form-group">
                <label class="col-form-label col-form-label-lg">Email <span class="text-danger">*</span></label>
                <input type="email" class="form-control form-control-lg">
            </div>
            <div class="col-12 form-group">
                <label class="col-form-label col-form-label-lg">Password <span class="text-danger">*</span></label>
                <input type="password" class="form-control form-control-lg">
            </div>
            <div class="col-12 form-group">
                <label class="col-form-label col-form-label-lg">Status <span class="text-danger">*</span></label>
                <select class="form-control form-control-lg">
                    <option value="">Select status</option>
                    <option value="admin">Admin</option>
                    <option value="user">User</option>
                </select>
            </div>
            <div class="col-12 form-group text-center">
                <router-link to="/dashboard">
                <button class="btn btn-vue btn-lg col-4">Update</button>
                </router-link>
            </div>
        </div>
    </form>
</template>
<script>
export default {
    name: 'SignupForm',
    props: ['Data'],
    mounted(){
        console.log(Data);
    }
}
</script>
<style>
.btn-vue{
    background: #53B985;
    color: #31485D;
    font-weight: bold;
}
</style>