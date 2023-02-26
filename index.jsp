<html>
    <head>
        <meta charset="ISO-8859-1">
        <title>Exemplo Servlet e JSTL</title>
        </head>
    <body>
        <div>
            <form action="pessoa" method="post">
                <table>
                    <tr>
                        <td><input type="number" id="id" placeholder="#ID" required="requied"
                                          value="<c:out value="${pessoa.id}" />"></td>
		     </tr>
	             <tr>
                        <td><input type="text" id="nome" placeholder="Nome" required="requied"
						value="<c:out value="${pessoa.nome}" />"></td>
                    </tr>
                    <tr>
                        <td><input type="submit" id="enviar" placeholder="Enviar" required="requied"
                    </tr>
                </table>
            
            </form>    
        </div>
	 <br />
	<div>
		<!--
		<c:if test="${empty pessoa }">
			<p>Sem pessoa</p>
		</c:if>
	 	-->

		<c:if test="${not empty pessoa}">
			<c:out value="${pessoa.id}" /> -
			<c:out value="${pessoa.nome}" />
		</c:if>
	</div>
	<br />

	<div>

		<c:if test="${not empty pessoa}">
			<table border="1">
				<thead>
					<tr>
						<th>#ID</th>
						<th>Nome</th>
					</tr>
				</thead>
				<tbody>

					<c:forEach items="${pessoas}" var="p">
						<tr>
							<td><c:out value="${p.id}" /></td>
							<td><c:out value="${p.nome}" /></td>
						</tr>
					</c:forEach>
				</tbody>

			</table>
		</c:if>


	</div>
    </body>
</html>
