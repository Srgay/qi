new Vue({
			el: '.app',
			data: {
					state:'登录',
					loginurl:'login.html',
					regist:''
				},
				created() {
					this.loginstate();
				},
				methods: {
						loginstate() {
							let username=Cookies.get("username");
							console.log(Cookies.get("username"));
							if(username!=null){
								this.state='欢迎你'+username;
								this.loginurl='my.html'
								this.regist='display: none;';
							}
						}
					}
			})
