<template>
    <div class="container">
        <div class="row">
            <div class="col-sm-12">
                <div style="height: 300px; background-color: white;" class="border">
                    <div v-for="message in messages">
                        {{ message }}
                    </div>
                </div>
                <hr>
                <input type="text" class="form-control" v-model="message" @keyup.enter="sendMessage">
            </div>
        </div>
    </div>
</template>

<script>
    export default {
        data() {
            return {
                messages: [],
                message: '',
            }
        },
        mounted() {
            window.Echo.private('room.2')
                .listen('Message', ({ data }) => {
                    console.log(data);
                    this.messages.push(data.body);
                });
        },
        methods: {
            async sendMessage() {
                const res = await axios.post('/messages', { body: this.message, room_id: 2 });
                console.log('res', res);
                this.messages.push(this.message);

                this.message = '';
            }
        }
    }
</script>
