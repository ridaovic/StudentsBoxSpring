<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="header.jsp" />
                    
                    <div class="contentpanel">
                       
                        <div class="panel panel-primary-head">
                            
                            <c:if  test="${!empty etudiantList}">
                            <table id="basicTable" class="table table-striped table-bordered responsive">
                                <thead class="">
                                    <tr>
                                        <th>Identifiant</th>
                                        <th>Nom</th>
                                        <th>Prenom</th>
                                        <th>Adresse</th>
                                        <th>Date de naissance</th>
                                        <th>Email</th>
                                        <th>Status</th>
                                    </tr>
                                </thead>
                         
                                <tbody>
                                <c:forEach items="${etudiantList}" var="emp">
                                    <tr>
                                        <td># ${emp.id}</td>
                                        <td>Rhanim</td>
                                        <td>Rida</td>
                                        <td>hey el falah</td>
                                        <td>1992/01/31</td>
                                        <td>rida.rhanim@gmail.com</td>
                                        <td><i class="fa fa-thumbs-o-up blue"></i></td>
                                    </tr>
                                  </c:forEach>

                                    
                                </tbody>
                            </table>
                            </c:if>
                        </div><!-- panel -->
                        
                        <br />
                        
                       
                        
                    </div><!-- contentpanel -->

<jsp:include page="footer.jsp" />