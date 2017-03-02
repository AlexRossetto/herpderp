

<cfcomponent>
	<cfset Main_Service = createObject('component','services.main')>

	<cfprocessingdirective pageencoding="UTF-8">
	<cffunction name="init" access="public" returntype="any">
		<cfargument name="fw" type="any" required="yes">
	    <cfset variables.fw = arguments.fw>
		<cfreturn this>
	</cffunction>

	<cffunction name="default" access="Public" returntype="any">
		<cfargument name="rc" type="any">
		<cfset main = createObject("component","services.main")>
		<cfset rc.teste = main.listar()>

		<cfset rc.pedro = "chupa pedrinho">

	</cffunction>

	<cffunction name="detalhe" access="public" returntype="any">
		<cfargument name="rc" type="any">
		<cffile action="upload" destination="#ExpandPath('/upload')#" filefield="form.foto" nameconflict="makeunique">
		<cfset imgDone = cffile.ServerFile>

		<cfset Inseerir = Main_Service.inserir(nome: rc.nome, email: rc.email, Idade: rc.Idade, foto:imgDone)>
		
	</cffunction>

	<cffunction name="consulta" access="public" returntype="any">
		<cfargument name="rc" type="any">

		<cfset rc.resultado = Main_Service.listar()>

	</cffunction>

	<cffunction name="mainAlterar" access="public" returntype="any">
		<cfargument name="rc" type="any">
		<cfset rc.resultado = Main_Service.buscarLinha(rc.id)>





	</cffunction>

		<cffunction name="alterar" access="public" returntype="any">
		<cfargument name="rc" type="any">
		<cffile action="upload" destination="#ExpandPath('/upload')#" filefield="form.foto" nameconflict="makeunique">
		<cfset imgDone = cffile.ServerFile>

		<cfset rc.resultado = Main_Service.alterarDaado(nome: nome, email: email, idade: idade, foto: imgDone, id: idalterar)>





	</cffunction>

	<cffunction name="deletar" access="public" returntype="any">
		<cfargument name="rc" type="any">
		<cfset deletar = Main_Service.deletarDado(idexcluir)>




	</cffunction>









</cfcomponent>



