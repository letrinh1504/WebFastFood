<%-- 
    Document   : header
    Created on : Feb 17, 2023, 11:16:17 AM
    Author     : ACER NITRO
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>
<!DOCTYPE html>
<html>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script
        src="https://code.jquery.com/jquery-3.7.0.js"
        integrity="sha256-JlqSTELeR4TLqP0OG9dxM7yDPqX1ox/HfgiSLBj8+kM="
    crossorigin="anonymous"></script>
    <script src="https://cdn.tailwindcss.com?plugins=forms,typography,aspect-ratio,line-clamp"></script>
    <script src="https://cdn.tailwindcss.com?plugins=forms,typography,aspect-ratio,line-clamp"></script>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0-10/css/all.min.css" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <!--        <script src="https://messenger.svc.chative.io/static/v1.0/channels/s4ccff02f-2ef2-4cd9-bfe9-3441597ea474/messenger.js?mode=livechat" defer="defer"></script>
    -->    <script>
        tailwind.config = {
            theme: {
                extend: {
                    colors: {
                        clifford: '#da373d',
                    }
                }
            }
        }
    </script>
    <style type="text/tailwindcss">
        @layer utilities {
            .content-auto {
                content-visibility: auto;
            }
        }
.star-rating {
  line-height:32px;
  font-size:1.25em;
  color:  #e2e22c;
}

.star-rating .fa-star{color: yellow;}

.pagination{
display: flex;
align-items: center;
justify-content: center;
list-style: none;
margin-top: 50px;
margin-bottom: 50px;
}

.pagination-item{
    margin: 0 ;

}
.pagination-item__link{
--height: 30px;
display: block;
color: #939393;
text-decoration: none;
font-size: 2rem;
font-weight: 600;
padding: 20px;
margin: 2px;
min-width: 40px;
text-align: center;
border-radius: 3px;
}
.pagination-item--active .pagination-item__link{
    background-color:#bd2130;
    color: white;

}
.pagination-item--active .pagination-item__link:hover{
    background-color: rgb(223, 98, 44);
}
.pagination-item__icon{

}

    </style>
    <body>
        <div class="container">
            <div class="content-wrapper font-karla max-w-screen-2xl text-base mx-auto px-8 bg-white text-black">
                <header class="my-6 px-10">
                    <nav class="flex flex-row justify-between items-center">
                        <div class="logo basis-2/6 text-center text-xl font-semibold cursor-pointer ">
                            FASTBITEs.
                        </div>
                        <ul
                            class="basis-3/6 hidden lg:flex items-center justify-end gap-8 uppercase text-sm text-gray-500 font-medium">
                            <li
                                class="cursor-pointer py-1 hover:text-gray-800 relative after:absolute after:bottom-0 after:left-0 after:bg-slate-900
                                after:h-0.5 after:w-0 hover:after:w-full after:transition-all after:ease-out after:duration-300">
                                <a href="index.jsp" class="">Home</a>
                            </li>
                            <li
                                class="cursor-pointer py-1 hover:text-gray-800 relative after:absolute after:bottom-0 after:left-0 after:bg-slate-900
                                after:h-0.5 after:w-0 hover:after:w-full after:transition-all after:ease-out after:duration-300">
                                <a href="products?nameSearch&choose=0" class="">OurProduct</a>
                            </li>
                            <li
                                class="cursor-pointer py-1 hover:text-gray-800 relative after:absolute after:bottom-0 after:left-0 after:bg-slate-900
                                after:h-0.5 after:w-0 hover:after:w-full after:transition-all after:ease-out after:duration-300">
                                <a href="https://mcdonalds.vn/tin-tuc.html" class="">Blog</a>
                            </li>
                            <li
                                class="cursor-pointer py-1 hover:text-gray-800 relative after:absolute after:bottom-0 after:left-0 after:bg-slate-900
                                after:h-0.5 after:w-0 hover:after:w-full after:transition-all after:ease-out after:duration-300">
                                <a href="home" class="">About</a>
                            </li>

                            <li
                                class="cursor-pointer py-1 hover:text-gray-800 relative after:absolute after:bottom-0 after:left-0 after:bg-slate-900
                                after:h-0.5 after:w-0 hover:after:w-full after:transition-all after:ease-out after:duration-300">
                                <a href="https://mcdonalds.vn/" class="">FASTBITEs</a>
                            </li>
                            <c:set var="acc" value="${sessionScope.acc}" />
                            <li class="cursor-pointer py-1 hover:text-gray-800 relative after:absolute after:bottom-0 after:left-0 after:bg-slate-900
                                after:h-0.5 after:w-0 hover:after:w-full after:transition-all after:ease-out after:duration-300 group">
                                <c:if test="${acc.username==null}"><a href="Login.jsp">Login</a></c:if> 
                                <c:if test="${acc.username!=null}">Welcome,${sessionScope.acc.username}</c:if>
                                    <div  class="absolute hidden group-hover:block group-hover:visible top-full min-w-full w-max bg-white shadow-md rounded">
                                        <ul class="text-left border rounded">
                                        <c:if test="${acc.username!=null}"> <li class="px-4 py-1 hover:bg-gray-500 border-b "> <a href="profile?id=${sessionScope.acc.username}">VIEW PROFILE</a> </li></c:if>
                                        <c:if test="${acc.idRole==1}"><li class="px-4 py-1 hover:bg-gray-500 border-b "> <a href="manageOrder">Sale Manage</a>  </li> </c:if>
                                        <c:if test="${acc.idRole==2}"><li class="px-4 py-1 hover:bg-gray-500 border-b "><a href="history?id=${sessionScope.acc.idAccount}">BUY HISTORY</a> </li> </c:if> 
                                        <c:if test="${acc.idRole==1}"><li class="px-4 py-1 hover:bg-gray-500 border-b "> <a href="manageProduct">Manage Product</a>  </li> </c:if>
                                        <c:if test="${acc.idRole==1}"><li class="px-4 py-1 hover:bg-gray-500 border-b "> <a href="manageAccount">Manage Account</a>  </li> </c:if>
                                        <c:if test="${acc.idRole==3}"><li class="px-4 py-1 hover:bg-gray-500 border-b "> <a href="manageDelivery?id=${sessionScope.acc.idAccount}">Manage delivery orders</a>  </li> </c:if>
                                        <c:if test="${acc.idRole!=null}">   <li class="px-4 py-1 hover:bg-gray-500 border-b "> <a href="logout?id=${sessionScope.acc.idAccount}">LOG OUT</a></li></c:if>
                                        </ul>
                                    </div>
                                </li>
                            <c:if test="${sessionScope.acc.idRole==3}">
                                <li
                                    class="cursor-pointer py-1 hover:text-gray-800 relative after:absolute after:bottom-0 after:left-0 after:bg-slate-900
                                    after:h-0.5 after:w-0 hover:after:w-full after:transition-all after:ease-out after:duration-300">
                                    <a href="Delivery.jsp" class="d-flex">
                                        <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-6 h-6">
                                        <path stroke-linecap="round" stroke-linejoin="round" d="M14.857 17.082a23.848 23.848 0 005.454-1.31A8.967 8.967 0 0118 9.75v-.7V9A6 6 0 006 9v.75a8.967 8.967 0 01-2.312 6.022c1.733.64 3.56 1.085 5.455 1.31m5.714 0a24.255 24.255 0 01-5.714 0m5.714 0a3 3 0 11-5.714 0M3.124 7.5A8.969 8.969 0 015.292 3m13.416 0a8.969 8.969 0 012.168 4.5" />
                                        </svg>
                                        <span class="text-sx text-center rounded-full px-1.5 bg-orange-500 text-white">${sessionScope.sizeShipper}</span>
                                    </a>
                                </li> 
                            </c:if>
                        </ul>

                        <ul
                            class="basis-1/6 flex justify-start items-center ml-16 uppercase text-sm text-gray-500 font-medium">
                            <li class="">
                                <a href="cart" class=" flex items-center ">

                                    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24"
                                         strokeWidth={1.5} stroke="currentColor" class="w-6 h-6 inline-block">
                                    <path strokeLinecap="round" strokeLinejoin="round"
                                          d="M15.75 10.5V6a3.75 3.75 0 10-7.5 0v4.5m11.356-1.993l1.263 12c.07.665-.45 1.243-1.119 1.243H4.25a1.125 1.125 0 01-1.12-1.243l1.264-12A1.125 1.125 0 015.513 7.5h12.974c.576 0 1.059.435 1.119 1.007zM8.625 10.5a.375.375 0 11-.75 0 .375.375 0 01.75 0zm7.5 0a.375.375 0 11-.75 0 .375.375 0 01.75 0z" />
                                    </svg>
                                    <span class="mx-2">Cart</span>
                                    <span class="text-sx text-center rounded-full px-1.5 bg-orange-500 text-white">${sessionScope.size}</span>
                                </a>
                            </li>
                        </ul>
                    </nav>
                </header>
