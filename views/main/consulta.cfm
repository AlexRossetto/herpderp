<cfhtmlhead text='<script type="text/javascript" src="//code.jquery.com/jquery-1.12.4.js"></script>
				<script type="text/javascript" src="https://cdn.datatables.net/1.10.13/js/jquery.dataTables.min.js"></script>
				<script type="text/javascript" src="https://cdn.datatables.net/1.10.13/js/dataTables.bootstrap.min.js"></script>
				<link rel="stylesheet" href="https://cdn.datatables.net/1.10.13/css/jquery.dataTables.min.css" type="text/css" media="screen" />
				<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" media="screen" />'>
				</cfhtmlhead>

<div>
<cfoutput>
	

<a href="#buildURL('main.default')#" style="float:right;margin-bottom:10px;"
	<button onclick="window.location ='' " type="button" class="btn btn-default">
		<span class="glyphicon glyphicon-plus" aria-hidden="true"></span>
	</button>
</a>	
</cfoutput>
	</div>
<cfoutput>
	<table id="tabela" class="table table-hover" cellspacing="10" width="100%">
		<thead>
		  <tr>		
			<th class="info"> Nome </th>
			
			<th class="danger" > Idade </th>
			<th class="success" > Email </th>
			<th class="warning"> Imagem </th>
			<th></th>
		  </tr>	
		</thead>

			<tbody>
				<cfloop query="rc.resultado">
					<tr>
						<td>#nome#</td>
						<td>#Idade#</td>
						<td>#email#</td>
						<cfif foto is "">
							<td>Não Possui Imagem</td>
						<cfelse>
							<td><img src="\upload\#foto#" height="60" width="80"></td>
						</cfif>
						<td>
							<!--- <h2> Botão editar </h2> --->
							<button type="button" class="btn btn-default" onclick="location.href='#buildUrl('main.mainAlterar?id=#id#')#'">
								<span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>
							</button>
						<!---	<h1> Botão deletar </h1> --->
						<form action="#buildUrl('main.deletar')#" method="post">
							<button type="submit" class="btn btn-default">
							
								<span class="glyphicon glyphicon-trash" aria-hidden="true"></span>
							</button>
							<input type="hidden" name="idexcluir" value="#rc.resultado.id#">
							</form>
						</td>
					
						

					</tr>	
				</cfloop>
			</tbody>
	</table>
</cfoutput>







<script>
$(document).ready(function(){

$("#tabela").dataTable({
      "pageLength": 10,
    "language":
   {
    "sProcessing":   "A processar...",
    "sLengthMenu":   "Mostrar _MENU_ registros",
    "sZeroRecords":  "Não foram encontrados resultados",
    "sInfo":         "Mostrando de _START_ até _END_ de _TOTAL_ registros",
    "sInfoEmpty":    "Mostrando de 0 até 0 de 0 registros",
    "sInfoFiltered": "(filtrado de _MAX_ registros no total)",
    "sInfoPostFix":  "",
    "sSearch":       "Procurar:",
    "sUrl":          "",
    "oPaginate": {
      "sFirst":    "Primeiro",
      "sPrevious": "Anterior",
      "sNext":     "Seguinte",
      "sLast":     "Último"
     }
   }
});

})


</script>

<script>

</script>