<cfcomponent>
	<cffunction name="inserir" access="public" returntype="any">
		<cfargument name="nome" type="string" required="yes">
		<cfargument name="email" type="string" required="yes">
		<cfargument name="Idade" type="numeric" required="yes">
		<cfargument name="foto"  type="string"  required="yes">

	<cfquery name="myInsert" datasource="pex">
		insert into aaaa_estags (nome,email,idade,foto)
			values (<cfqueryparam cfsqltype="cf_sql_char" value="#arguments.nome#">,
					<cfqueryparam cfsqltype="cf_sql_char" value="#arguments.email#">,
					<cfqueryparam cfsqltype="cf_sql_integer" value="#arguments.Idade#">,
					<cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.foto#">



				)
	</cfquery>

	</cffunction>

	<cffunction name="listar" acess="public" returntype="any">
		<cfquery name="myListagem" datasource="pex">
			select * from aaaa_estags 

		</cfquery>

		<cfreturn myListagem>

	</cffunction>

		<cffunction name="buscarLinha" acess="public" returntype="any">
		<cfargument name="id" type="numeric" required="yes">
		<cfquery name="buscarDado" datasource="pex">
			select * from aaaa_estags
			where id = <cfqueryparam cfsqltype="cfsqlinteger" value="#arguments.id#">


		</cfquery>

		<cfreturn buscarDado>

	</cffunction>

	<cffunction name="alterarDaado" acess="public" returntype="any">
		<cfargument name="nome" type="string" required="yes">
		<cfargument name="email" type="string" required="yes">
		<cfargument name="Idade" type="numeric" required="yes">
		<cfargument name="foto"  type="string"  required="yes">
		<cfargument name="id" type="numeric" required="yes">
		<cfquery name="alterarDaado" datasource="pex">
			UPDATE aaaa_estags
			SET nome  = <cfqueryparam cfsqltype="cf_sql_char" value="#arguments.nome#">,
				email = <cfqueryparam cfsqltype="cf_sql_char" value="#arguments.email#">,
				Idade = <cfqueryparam cfsqltype="cf_sql_integer" value="#arguments.Idade#">,
				foto  = <cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.foto#">

			WHERE id = <cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.id#">
					
			

		</cfquery>

		<!--- <cfreturn alterarDaado> --->

	

	</cffunction>

	<cffunction name="deletarDado" acess="public" returntype="any">
		<cfargument name="id" type="numeric" required="yes">
		<cfquery name="DeletarDado" datasource="pex">
			DELETE FROM aaaa_estags
			WHERE id = <cfqueryparam cfsqltype="cf_sql_integer" value="#arguments.id#">

		</cfquery>

		</cffunction>


</cfcomponent>