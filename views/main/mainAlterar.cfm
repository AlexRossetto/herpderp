<meta charset="UTF-8">

<cfoutput>
<head>
	<script type="text/javascript" src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.16.0/jquery.validate.js"></script>

<!-- Latest compiled and minified JavaScript -->
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>


		<!-- Latest compiled and minified CSS -->
			<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

	<!-- Optional theme -->
			<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">


		

</head>
<cfdump var="#rc#">
<!--- <form action="#buildUrl('main.detalhe')#" name="frmTeste" onsubmit="return validaForm(this);" id="" method="post"> --->
<form action="#buildUrl('main.alterar')#" name="frmTeste" id="rc" enctype="multipart/form-data" method="post" onsubmit="return validaForm(this);">

<div class="form-group">
	<div class="row">
	<div class="col-md-6">
		<div class="col-md-1">
				<label for="Nome">Nome</label>		
		</div>
		<div class="col-md-10">
				<input placeholder="Nome" type="text" name="nome" id="nome" value="#rc.resultado.nome#" required/>
		</div>			
	</div>	
	<div class="col-md-6">
		
			<p id="msgNome">	

	</div>

		
	</div>

	<div class="row">
		<div class="col-md-6">
			<div class="col-md-1">
				<label for="Email">Email</label>
			</div>
		
			<div class="col-md-10">
				<input placeholder="E-mail" type="text" name="email" id="email"  value="#rc.resultado.email#" required/>
			</div>
		</div>
	<div class="col-md-6">
			
			<p id="msgEmail">		
		
		</div>
	</div>		

		
	
	<div class="row">
		<div class="col-md-6">
			<div class="col-md-1">
				<label for="Idade">Idade</label>
			</div>
			<div class="col-md-10">
				<input min="0" placeholder="Idade" type="number" name="Idade" id="Idade"  value="#rc.resultado.idade#" required/>
			</div>	
		</div>
		<div class="col-md-6">
		<p id="msgIdade">
		</div>
	</div>	

	<div>
		<input type="file" name="foto" id="foto">
	</div>
</div>

<button type="submit" class="btn btn-danger">
		Alterar

		</button>
		<input type="hidden" name="idalterar" value="#rc.resultado.id#">
	</form>
<!--- <cfdump var="#rc#"> --->
</cfoutput>


	<script type="text/javascript">




		function validaForm(frm) 
		{

			if(frm.nome.value == "" || 
			frm.nome.value == null ||
			frm.nome.value.length < 3) {
				$('#msgNome').text('Por favor, indique o seu nome')
				frm.nome.focus();
				return false;

			}else{
				$('#msgNome').text('')
			}

			

			if(frm.email.value.indexOf("@") == -1 ||
				frm.email.value.indexOf(".") == -1 ||
				frm.email.value == "" ||
				frm.email.value == null) {


				
				$('#msgEmail').text('Por favor, indique o seu Email')
					frm.email.focus();
					return false;

			}			
			
		}



	</script>