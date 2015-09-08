<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="header.jsp" />
                    
                    <div class="contentpanel">
                       
                        <div class="panel panel-primary-head">
                            
                            <c:if  test="${!empty plaintList}">
                            <table id="basicTable" class="table table-striped table-bordered responsive">
                                <thead class="">
                                    <tr>
                                        <th>Identifiant</th>
                                        <th>é‰dité par</th>
                                        <th>Type</th>
                                        <th>Sujet</th>
                                        <th>Date plainte</th>
                                        <th>Visibilite</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                         
                                <tbody>
                                <c:forEach items="${plaintList}" var="emp">
                                    <tr>
                                        <td># ${emp.id}</td>
                                        <td>Rhanim</td>
                                        <td>${emp.type}</td>
										<td>${emp.sujet}</td>
										<td>${emp.date}</td>
                                        <td><i style="width: 100%;" style="width: 100%;" class="fa fa-eye-slash rouge"></i></td>
                                        <td><a href="modif_reservationMateriels.html"> <i style="width: 100%;" class="fa fa-pencil-square-o"></i> </a></td>
                                    </tr>
                                   </c:forEach>

                                  
                                </tbody>
                            </table>
                            </c:if>
                        </div><!-- panel -->
                        
                        <br />
                        
                       
                        
                    </div><!-- contentpanel -->
             			
<jsp:include page="footer.jsp" />