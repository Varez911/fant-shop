<template>
    <form id="signup-form">
        <div class="row">
            <div class="col-12 form-group">
                <label class="col-form-label col-form-label-lg">ID <span class="text-danger">*</span></label>
                <input type="text" class="form-control form-control-lg" v-model="id">
            </div>
            <div class="col-12 form-group">
                <label class="col-form-label col-form-label-lg">Nama <span class="text-danger">*</span></label>
                <input type="text" class="form-control form-control-lg" v-model="nama">
            </div>
            <div class="col-12 form-group">
                <label class="col-form-label col-form-label-lg">Email <span class="text-danger">*</span></label>
                <input type="email" class="form-control form-control-lg" v-model="email">
            </div>
            <div class="col-12 form-group">
                <label class="col-form-label col-form-label-lg">Password <span class="text-danger">*</span></label>
                <input type="password" class="form-control form-control-lg" v-model="password">
            </div>
            <div class="col-12 form-group">
                <label class="col-form-label col-form-label-lg">Status <span class="text-danger">*</span></label>
                <select class="form-control form-control-lg" v-model="status">
                    <option value="">Select status</option>
                    <option value="admin">Admin</option>
                    <option value="user">User</option>
                </select>
            </div>
            <div class="col-12 form-group text-center">
                <router-link to="/dashboard">
                <button class="btn btn-vue btn-lg col-4" @click="updateUser()">Update</button>
                </router-link>
            </div>
        </div>
    </form>
</template>
<script>
export default {
    name: 'SignupForm',
    props: ['Data'],
    data: function(){
        return{
            id: '',
            nama: '',
            email: '',
            password: '',
            status: ''
        }
    },
    methods:{
        updateUser: function(){
            axios.get('/api/updateUser-'+this.id+'-'+this.nama+'-'+this.email+'-'+this.password+'-'+this.status)
            .then(
                console.log('Update Berhasil')
            );
            // console.log('/api/updateUser-'+this.id+'-'+this.nama+'-'+this.email+'-'+this.password+'-'+this.status);
        }
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