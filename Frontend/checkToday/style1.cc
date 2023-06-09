body{
margin: 0;
padding: 0;
font-family: sans-serif;
background: linear-gradient(#E0EAFC,#CFDEF3);
height: 1000vh;
user-select: none;
}

.centre,.content{

	position: absolute;
	top: 50%;
	left: 50%
	transform: translate(-50%, -50%);
}


.content{
	opacity: 0;
	visibility: hidden;
	width: 400px;
	height: 350px;
	background: white;
	border-radius: 3px;
	transition: .3s ease-in;
	box-shadow: 0 2px 12px 0 rgba(0,0,0,.4);
}
.header{
	height: 68px;
	background: #27ae60;
	overflow: hidden;
	border-radius: 3px 3px 0 0;
	box-shadow: 0 2px 3px 0 rgba(0,0,0,.2);
}



.header h5{
	color:white;
	padding-left: 32px;
	font-weight: normal;
}




p{
	padding-top: 10px;
	font-size: 19px;
	color: #1a1a1a;
	text-align: center;
}
.line{
	position: absolute;
	bottom: 60px;
	width: 100%;
	height: 1px;
	background: silver;
}
.close-btn{
	position: absolute;
	bottom: 12px;
	right: 25px;
	border: 1px solid #27ae60;
	border-radius: 3px;
	color: #27ae60;
	padding: 8px 10px;
	font-size: 18px;
	cursor: pointer;

}
.close-btn:hover{
	background: #27ae60;
	color: ;
	transition: .5s;
}
