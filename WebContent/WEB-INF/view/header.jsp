<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@page import="test.Lien"%>
<html lang="en">


<head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>Liste des administrateurs</title>

        <link href="resources/css/style.default.css" rel="stylesheet">
        <link href="resources/css/select2.css" rel="stylesheet" />
        <link href="resources/css/style.datatables.css" rel="stylesheet">
        <link href="resources/cdn.datatables.net/responsive/1.0.1/css/dataTables.responsive.css" rel="stylesheet">

        <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!--[if lt IE 9]>
        <script src="resources/js/html5shiv.js"></script>
        <script src="resources/js/respond.min.js"></script>
        <![endif]-->
    </head>

    <body>
        
        <header>
            <div class="headerwrapper">
                <div class="header-left">
                    <a href="index.html" class="logo">
                        <img src="resources/images/minilogo1.png" alt="" /> 
                    </a>
                    <div class="pull-right">
                        <a href="#" class="menu-collapse">
                            <i class="fa fa-bars"></i>
                        </a>
                    </div>
                </div><!-- header-left -->
                
                <div class="header-right">
                    
                    <div class="pull-right">
                        
                    
                        
                        <div class="btn-group btn-group-list btn-group-notification">
                            <a href="#" type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
                              <i class="fa fa-calendar"></i>
                              <span class="badge">5</span>
                            </a>
                            
                        </div><!-- btn-group -->

                        <div class="btn-group btn-group-list btn-group-notification">
                            <a href="#" type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
                              <i class="fa fa-bullhorn"></i>
                              <span class="badge">13</span>
                            </a>
                            
                        </div><!-- btn-group -->

                        <div class="btn-group btn-group-list btn-group-notification">
                            <a href="#" type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
                              <i class="fa fa-file-text-o"></i>
                              <span class="badge">20</span>
                            </a>
                            
                        </div><!-- btn-group -->

                        <div class="btn-group btn-group-list btn-group-notification">
                            <a href="#" type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
                              <i class="fa fa-phone"></i>
                              <span class="badge">23</span>
                            </a>
                            
                        </div><!-- btn-group -->
                        
                                                
                        <div class="btn-group btn-group-option">
                            <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
                              <i class="fa fa-caret-down"></i>
                            </button>
                            <ul class="dropdown-menu pull-right" role="menu">
                              <li><a href="#"><i class="glyphicon glyphicon-user"></i> Afficher mon profil</a></li>
                              <li class="divider"></li>
                              <li><a href="login?logout"><i class="glyphicon glyphicon-log-out"></i>Déconnexion</a></li>
                            </ul>
                        </div><!-- btn-group -->
                        
                    </div><!-- pull-right -->
                    
                </div><!-- header-right -->
                
            </div><!-- headerwrapper -->
        </header>
        <br>
        <br>
        
        <section>
            <div class="mainwrapper">
                <div class="leftpanel">
                    <div class="media profile-left">
                        <a class="pull-left profile-thumb" href="profile.html">
                            <img class="img-circle" src="resources/images/photos/user1.png" alt="">
                        </a>
                        <div class="media-body">
        
							<h4 class="media-heading"><c:if test="${pageContext.request.userPrincipal.name != null}">
							<c:set var="data" value="${fn:split(pageContext.request.userPrincipal.name, '@')}" />${data[0]} </c:if>
							</h4>
                            <small class="text-muted">Webmaster</small>
                        </div>
                    </div><!-- media -->
                    
             

                    <h5 class="leftpanel-title">Navigation</h5>
                    <ul class="nav nav-pills nav-stacked">
                        
                        
						<li class="parent <%if(Lien.isCurrent(request.getRequestURL().toString(), "administrateurs") || Lien.isCurrent(request.getRequestURL().toString(), "ajouter_administrateur")) out.println("active"); %>">
						<a href="#"><i class="fa fa-tachometer"></i> <span>Administrateurs</span></a>
                            <ul class="children">
                                <%if(Lien.isCurrent(request.getRequestURL().toString(), "administrateurs"))
                            	out.println("<li class='active'><a href='#'>Liste des administrateurs</a></li>");
	                            else 
	                            	out.println("<li><a href='administrateurs'>Liste des administrateurs</a></li>");
	                            %>
	                           
	                            <%if(Lien.isCurrent(request.getRequestURL().toString(), "ajouter_administrateur"))
	                            	out.println("<li class='active'><a href='#'>Ajouter administrateur</a></li>");
	                            else 
	                            	out.println("<li><a href='add-admin'>Ajouter administrateur</a></li>");
	                            %>
                            </ul>
                        </li>
						
                        <li class="parent <%if(Lien.isCurrent(request.getRequestURL().toString(), "etudiants") || Lien.isCurrent(request.getRequestURL().toString(), "ajouter_etudiant")) out.println("active"); %>"><a href="#"><i class="fa fa-graduation-cap"></i> <span>Etudiants</span></a>
                            <ul class="children">
                            
                            <%if(Lien.isCurrent(request.getRequestURL().toString(), "etudiants"))
                            	out.println("<li class='active'><a href='#'>Liste des etudiants</a></li>");
                            else 
                            	out.println("<li><a href='etudiants'>Liste des etudiants</a></li>");
                            %>
                            
                            <%if(Lien.isCurrent(request.getRequestURL().toString(), "ajouter_etudiant"))
                            	out.println("<li class='active'><a href='#'>Ajouter etudiant</a></li>");
                            
                            else 
                            	out.println("<li><a href='add-etudiant'>Ajouter etudiant</a></li>");
                            %> 
                            </ul>
                        </li>
						
						<li class="parent <%if(Lien.isCurrent(request.getRequestURL().toString(), "salles") || Lien.isCurrent(request.getRequestURL().toString(), "ajouter_salle")) out.println("active"); %>"><a href="#"><i class="fa fa-suitcase"></i> <span>Salles</span></a>
                            <ul class="children">
                            
                            <%if(Lien.isCurrent(request.getRequestURL().toString(), "salles"))
                            	out.println("<li class='active'><a href='#'>Liste des salles</a></li>");
                            else 
                            	out.println("<li><a href='salles'>Liste des salles</a></li>");
                            %>
                            
                            <%if(Lien.isCurrent(request.getRequestURL().toString(), "ajouter_salle"))
                            	out.println("<li class='active'><a href='#'>Ajouter salle</a></li>");
                            
                            else 
                            	out.println("<li><a href='add-salle'>Ajouter salle</a></li>");
                            %> 
                            </ul>
                        </li>
                        
                     
						<%if(Lien.isCurrent(request.getRequestURL().toString(), "reservations"))
                            	out.println("<li class='active'><a href='#'><span class='pull-right badge'>3</span><i class='fa fa-calendar'></i> <span>Reservation</span></a></li>");
                            else 
                            	out.println("<li><a href='reservations'><span class='pull-right badge'>3</span><i class='fa fa-calendar'></i> <span>Reservation</span></a></li>");
                            %>
                        
						
						<%if(Lien.isCurrent(request.getRequestURL().toString(), "reclamations"))
                            	out.println("<li class='active'><a href='#'><span class='pull-right badge'>13</span><i class='fa fa-bullhorn'></i> <span>Reclamations</span></a></li>");
                            else 
                            	out.println("<li><a href='reclamations'><span class='pull-right badge'>13</span><i class='fa fa-bullhorn'></i> <span>Reclamations</span></a></li>");
                            %>
                        

						<%if(Lien.isCurrent(request.getRequestURL().toString(), "documents"))
                            	out.println("<li class='active'><a href='#'><span class='pull-right badge'>20</span><i class='fa fa-file-text-o'></i> <span>Documents</span></a></li>");
                            else 
                            	out.println("<li><a href='documents'><span class='pull-right badge'>20</span><i class='fa fa-file-text-o'></i> <span>Documents</span></a></li>");
                            %>

                        <%if(Lien.isCurrent(request.getRequestURL().toString(), "plaints"))
                            	out.println("<li class='active'><a href='#'><span class='pull-right badge'>25</span><i class='fa fa-phone'></i> <span>Plaints</span></a></li>");
                            else 
                            	out.println("<li><a href='plaints'><span class='pull-right badge'>25</span><i class='fa fa-phone'></i> <span>Plaints</span></a></li>");
                            %>
                        
                        

                    </ul>
                    
                </div><!-- leftpanel -->
                
                <div class="mainpanel">
                    <div class="pageheader">
                        <div class="media">
                            <div class="pageicon pull-left">
                                <i class="fa fa-th-list"></i>
                            </div>
                            <div class="media-body">
                                <ul class="breadcrumb">
                                    <li><a href="#"><i class="glyphicon glyphicon-home"></i></a></li>
                                    <li><a href="#">Tables</a></li>
                                    <li>Data Tables</li>
                                </ul>
                                <h4>Data Tables</h4>
                            </div>
                        </div><!-- media -->
                    </div><!-- pageheader -->
                    
