<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="header.jsp" />
                    
                      
                    <div class="contentpanel">
                       
                        <div class="panel panel-primary-head">
                            
                            <c:if  test="${!empty reservationList}">
                            <table id="basicTable" class="table table-striped table-bordered responsive">
                                <thead class="">
                                    <tr>
                                        <th>Numéro</th>
                                        <th>Réservé par</th>
                                        <th>Date reservation</th>
                                        <th>Date debut</th>
                                        <th>Date fin</th>
                                        <th>Status</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                         
                                <tbody>
                                <c:forEach items="${reservationList}" var="emp">
                                    <tr>
                                        <td>${emp.numero}</td>
                                        <td>Rhanim</td>
                                        <td>${emp.date}</td>
                                        <td>${emp.debut}</td>
                                        <td>${emp.fin}</td>
                                        <td><i class="fa fa-thumbs-o-up blue"></i></td>
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