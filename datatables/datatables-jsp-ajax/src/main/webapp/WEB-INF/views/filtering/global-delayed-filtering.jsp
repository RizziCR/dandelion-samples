<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../common/taglib.jsp"%>

<!-- Update the current scope with extra functions needed for rendering -->
<dandelion:bundle include="custom-rendering" />

<div class="row-fluid row-intro">
   <div class="span12">
      <h3>Global delayed filtering</h3>
      <p>In the following example, any action in the table (global filtering, paging, individual
         column filtering, sorting) will be performed after a delay of 1000ms.</p>
   </div>
</div>

<div class="row-fluid">
   <div class="span12">
   
      <datatables:table id="myTableId" url="/persons" serverSide="true" processing="true" filterDelay="1000">
         <datatables:column title="Id" property="id" />
         <datatables:column title="FirstName" property="firstName" />
         <datatables:column title="LastName" property="lastName" />
         <datatables:column title="City" property="address.town.name" filterable="true" />
         <datatables:column title="Mail" property="mail" renderFunction="mailify" />
      </datatables:table>

   </div>
</div>
