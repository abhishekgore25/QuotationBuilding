<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="com.quotationbuilding1.model.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Show All Quotes</title>
    <style>
        body {
            background-image: url('background.png');
            background-size: cover;
            font-family: Arial, sans-serif;
        }
        h1 {
            text-align: center;
            color: #fff;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin: 20px auto;
            background-color: #fff;
            border-radius: 8px;
            overflow: hidden;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
        }
        th, td {
            padding: 12px 15px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }
        th {
            background-color: #4CAF50;
            color: white;
        }
        tr:hover {
            background-color: #f5f5f5;
        }
        .show-quote {
            display: block;
            width: 100%;
            text-align: center;
            text-decoration: none;
            color: #fff;
            background-color: #007bff;
            padding: 8px 16px;
            border-radius: 4px;
        }
        .show-quote:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <h1>All Quotes</h1>
    <table>
        <thead>
            <tr>
                <th>Quote ID</th>
                <th>Additional Charges</th>
                <th>Company ID</th>
                <th>Customer Contact</th>
                <th>Customer Name</th>
                <th>Delivery Date</th>
                <th>Discount</th>
                <th>Manufacturer</th>
                <th>Model</th>
                <th>Payment Terms</th>
                <th>Product Description</th>
                <th>Product Name</th>
                <th>Quantity</th>
                <th>Taxes</th>
                <th>Unit Price</th>
                <th>Warranty</th>
                <th>Year</th>
                <th>Show Quote</th>
            </tr>
        </thead>
        <tbody>
            <%-- Assuming quotes is a List of Quote objects retrieved from the database --%>
            <%-- Iterate through the list to display each quote --%>
            <%-- Replace this with your actual data retrieval logic --%>
         
          
                <tr>
                
                    <td> ${quote1.getQuoteid()} </td>
                    <td> ${quote1.getAdditionalCharges()} </td>
                    <td> ${quote1.getCompanyid()} </td>
                    <td> ${quote1.getCustomerContact() }</td>
                    <td> ${quote1.getCustomerName()} </td>
                    <td> ${quote1.getDeliveryDate()} </td>
                    <td> ${quote1.getDiscount()} </td>
                    <td> ${quote1.getManufacturer()} </td>
                    <td> ${quote1.getModel()} </td>
                    <td> ${quote1.getPaymentTerms()} </td>
                    <td> ${quote1.getProductDescription()} </td>
                    <td> ${quote1.getProductName()}</td>
                    <td> ${quote1.getQuantity()}</td>
                    <td> ${quote1.getTaxes()} </td>
                    <td> ${quote1.getUnitPrice()} </td>
                    <td> ${quote1.getWarranty()} </td>
                    <td> ${quote1.getYear() }</td>
                    <td> <a href="/showquote/${quote1.getQuoteid()}" class="show-quote">Show Quote</a></td>
                </tr>
                
                 <tr>
                    <td> ${quote2.getQuoteid()} </td>
                    <td> ${quote2.getAdditionalCharges()} </td>
                    <td> ${quote2.getCompanyid()} </td>
                    <td> ${quote2.getCustomerContact() }</td>
                    <td> ${quote2.getCustomerName()} </td>
                    <td> ${quote2.getDeliveryDate()} </td>
                    <td> ${quote2.getDiscount()} </td>
                    <td> ${quote2.getManufacturer()} </td>
                    <td> ${quote2.getModel()} </td>
                    <td> ${quote2.getPaymentTerms()} </td>
                    <td> ${quote2.getProductDescription()} </td>
                    <td> ${quote2.getProductName()}</td>
                    <td> ${quote2.getQuantity()}</td>
                    <td> ${quote2.getTaxes()} </td>
                    <td> ${quote2.getUnitPrice()} </td>
                    <td> ${quote2.getWarranty()} </td>
                    <td> ${quote2.getYear() }</td>
                    <td> <a href="/showquote/${quote2.getQuoteid()}" class="show-quote">Show Quote</a></td>
                </tr>
                
                 <tr>
                    <td> ${quote3.getQuoteid()} </td>
                    <td> ${quote3.getAdditionalCharges()} </td>
                    <td> ${quote3.getCompanyid()} </td>
                    <td> ${quote3.getCustomerContact() }</td>
                    <td> ${quote3.getCustomerName()} </td>
                    <td> ${quote3.getDeliveryDate()} </td>
                    <td> ${quote3.getDiscount()} </td>
                    <td> ${quote3.getManufacturer()} </td>
                    <td> ${quote3.getModel()} </td>
                    <td> ${quote3.getPaymentTerms()} </td>
                    <td> ${quote3.getProductDescription()} </td>
                    <td> ${quote3.getProductName()}</td>
                    <td> ${quote3.getQuantity()}</td>
                    <td> ${quote3.getTaxes()} </td>
                    <td> ${quote3.getUnitPrice()} </td>
                    <td> ${quote3.getWarranty()} </td>
                    <td> ${quote3.getYear() }</td>
                    <td> <a href="/showquote/${quote3.getQuoteid()}" class="show-quote">Show Quote</a></td>
                </tr>
                
                 <tr>
                    <td> ${quote4.getQuoteid()} </td>
                    <td> ${quote4.getAdditionalCharges()} </td>
                    <td> ${quote4.getCompanyid()} </td>
                    <td> ${quote4.getCustomerContact() }</td>
                    <td> ${quote4.getCustomerName()} </td>
                    <td> ${quote4.getDeliveryDate()} </td>
                    <td> ${quote4.getDiscount()} </td>
                    <td> ${quote4.getManufacturer()} </td>
                    <td> ${quote4.getModel()} </td>
                    <td> ${quote4.getPaymentTerms()} </td>
                    <td> ${quote4.getProductDescription()} </td>
                    <td> ${quote4.getProductName()}</td>
                    <td> ${quote4.getQuantity()}</td>
                    <td> ${quote4.getTaxes()} </td>
                    <td> ${quote4.getUnitPrice()} </td>
                    <td> ${quote4.getWarranty()} </td>
                    <td> ${quote4.getYear() }</td>
                     <td> <a href="/showquote/${quote4.getQuoteid()}" class="show-quote">Show Quote</a></td>
                </tr>
                
                 <tr>
                    <td> ${quote5.getQuoteid()} </td>
                    <td> ${quote5.getAdditionalCharges()} </td>
                    <td> ${quote5.getCompanyid()} </td>
                    <td> ${quote5.getCustomerContact() }</td>
                    <td> ${quote5.getCustomerName()} </td>
                    <td> ${quote5.getDeliveryDate()} </td>
                    <td> ${quote5.getDiscount()} </td>
                    <td> ${quote5.getManufacturer()} </td>
                    <td> ${quote5.getModel()} </td>
                    <td> ${quote5.getPaymentTerms()} </td>
                    <td> ${quote5.getProductDescription()} </td>
                    <td> ${quote5.getProductName()}</td>
                    <td> ${quote5.getQuantity()}</td>
                    <td> ${quote5.getTaxes()} </td>
                    <td> ${quote5.getUnitPrice()} </td>
                    <td> ${quote5.getWarranty()} </td>
                    <td> ${quote5.getYear() }</td>
                    <td> <a href="/showquote/${quote5.getQuoteid()}" class="show-quote">Show Quote</a></td>
                </tr>
                
                 <tr>
                    <td> ${quote6.getQuoteid()} </td>
                    <td> ${quote6.getAdditionalCharges()} </td>
                    <td> ${quote6.getCompanyid()} </td>
                    <td> ${quote6.getCustomerContact() }</td>
                    <td> ${quote6.getCustomerName()} </td>
                    <td> ${quote6.getDeliveryDate()} </td>
                    <td> ${quote6.getDiscount()} </td>
                    <td> ${quote6.getManufacturer()} </td>
                    <td> ${quote6.getModel()} </td>
                    <td> ${quote6.getPaymentTerms()} </td>
                    <td> ${quote6.getProductDescription()} </td>
                    <td> ${quote6.getProductName()}</td>
                    <td> ${quote6.getQuantity()}</td>
                    <td> ${quote6.getTaxes()} </td>
                    <td> ${quote6.getUnitPrice()} </td>
                    <td> ${quote6.getWarranty()} </td>
                    <td> ${quote6.getYear() }</td>
                     <td> <a href="/showquote/${quote6.getQuoteid()}" class="show-quote">Show Quote</a></td>
                </tr>
                
                 <tr>
                    <td> ${quote7.getQuoteid()} </td>
                    <td> ${quote7.getAdditionalCharges()} </td>
                    <td> ${quote7.getCompanyid()} </td>
                    <td> ${quote7.getCustomerContact() }</td>
                    <td> ${quote7.getCustomerName()} </td>
                    <td> ${quote7.getDeliveryDate()} </td>
                    <td> ${quote7.getDiscount()} </td>
                    <td> ${quote7.getManufacturer()} </td>
                    <td> ${quote7.getModel()} </td>
                    <td> ${quote7.getPaymentTerms()} </td>
                    <td> ${quote7.getProductDescription()} </td>
                    <td> ${quote7.getProductName()}</td>
                    <td> ${quote7.getQuantity()}</td>
                    <td> ${quote7.getTaxes()} </td>
                    <td> ${quote7.getUnitPrice()} </td>
                    <td> ${quote7.getWarranty()} </td>
                    <td> ${quote7.getYear() }</td>
                    <td> <a href="/showquote/${quote7.getQuoteid()}" class="show-quote">Show Quote</a></td>
                </tr>
                
                 <tr>
                    <td> ${quote8.getQuoteid()} </td>
                    <td> ${quote8.getAdditionalCharges()} </td>
                    <td> ${quote8.getCompanyid()} </td>
                    <td> ${quote8.getCustomerContact() }</td>
                    <td> ${quote8.getCustomerName()} </td>
                    <td> ${quote8.getDeliveryDate()} </td>
                    <td> ${quote8.getDiscount()} </td>
                    <td> ${quote8.getManufacturer()} </td>
                    <td> ${quote8.getModel()} </td>
                    <td> ${quote8.getPaymentTerms()} </td>
                    <td> ${quote8.getProductDescription()} </td>
                    <td> ${quote8.getProductName()}</td>
                    <td> ${quote8.getQuantity()}</td>
                    <td> ${quote8.getTaxes()} </td>
                    <td> ${quote8.getUnitPrice()} </td>
                    <td> ${quote8.getWarranty()} </td>
                    <td> ${quote8.getYear() }</td>
                    <td> <a href="/showquote/${quote8.getQuoteid()}" class="show-quote">Show Quote</a></td>
                </tr>
                
                 <tr>
                    <td> ${quote9.getQuoteid()} </td>
                    <td> ${quote9.getAdditionalCharges()} </td>
                    <td> ${quote9.getCompanyid()} </td>
                    <td> ${quote9.getCustomerContact() }</td>
                    <td> ${quote9.getCustomerName()} </td>
                    <td> ${quote9.getDeliveryDate()} </td>
                    <td> ${quote9.getDiscount()} </td>
                    <td> ${quote9.getManufacturer()} </td>
                    <td> ${quote9.getModel()} </td>
                    <td> ${quote9.getPaymentTerms()} </td>
                    <td> ${quote9.getProductDescription()} </td>
                    <td> ${quote9.getProductName()}</td>
                    <td> ${quote9.getQuantity()}</td>
                    <td> ${quote9.getTaxes()} </td>
                    <td> ${quote9.getUnitPrice()} </td>
                    <td> ${quote9.getWarranty()} </td>
                    <td> ${quote9.getYear() }</td>
                    <td> <a href="/showquote/${quote9.getQuoteid()}" class="show-quote">Show Quote</a></td>
                </tr>
                
                 <tr>
                    <td> ${quote10.getQuoteid()} </td>
                    <td> ${quote10.getAdditionalCharges()} </td>
                    <td> ${quote10.getCompanyid()} </td>
                    <td> ${quote10.getCustomerContact() }</td>
                    <td> ${quote10.getCustomerName()} </td>
                    <td> ${quote10.getDeliveryDate()} </td>
                    <td> ${quote10.getDiscount()} </td>
                    <td> ${quote10.getManufacturer()} </td>
                    <td> ${quote10.getModel()} </td>
                    <td> ${quote10.getPaymentTerms()} </td>
                    <td> ${quote10.getProductDescription()} </td>
                    <td> ${quote10.getProductName()}</td>
                    <td> ${quote10.getQuantity()}</td>
                    <td> ${quote10.getTaxes()} </td>
                    <td> ${quote10.getUnitPrice()} </td>
                    <td> ${quote10.getWarranty()} </td>
                    <td> ${quote10.getYear() }</td>
                    <td> <a href="/showquote/${quote10.getQuoteid()}" class="show-quote">Show Quote</a></td>
                </tr>
                
                 <tr>
                    <td> ${quote11.getQuoteid()} </td>
                    <td> ${quote11.getAdditionalCharges()} </td>
                    <td> ${quote11.getCompanyid()} </td>
                    <td> ${quote11.getCustomerContact() }</td>
                    <td> ${quote11.getCustomerName()} </td>
                    <td> ${quote11.getDeliveryDate()} </td>
                    <td> ${quote11.getDiscount()} </td>
                    <td> ${quote11.getManufacturer()} </td>
                    <td> ${quote11.getModel()} </td>
                    <td> ${quote11.getPaymentTerms()} </td>
                    <td> ${quote11.getProductDescription()} </td>
                    <td> ${quote11.getProductName()}</td>
                    <td> ${quote11.getQuantity()}</td>
                    <td> ${quote11.getTaxes()} </td>
                    <td> ${quote11.getUnitPrice()} </td>
                    <td> ${quote11.getWarranty()} </td>
                    <td> ${quote11.getYear() }</td>
                     <td> <a href="/showquote/${quote11.getQuoteid()}" class="show-quote">Show Quote</a></td>
                </tr>
                
                 <tr>
                    <td> ${quote12.getQuoteid()} </td>
                    <td> ${quote12.getAdditionalCharges()} </td>
                    <td> ${quote12.getCompanyid()} </td>
                    <td> ${quote12.getCustomerContact() }</td>
                    <td> ${quote12.getCustomerName()} </td>
                    <td> ${quote12.getDeliveryDate()} </td>
                    <td> ${quote12.getDiscount()} </td>
                    <td> ${quote12.getManufacturer()} </td>
                    <td> ${quote12.getModel()} </td>
                    <td> ${quote12.getPaymentTerms()} </td>
                    <td> ${quote12.getProductDescription()} </td>
                    <td> ${quote12.getProductName()}</td>
                    <td> ${quote12.getQuantity()}</td>
                    <td> ${quote12.getTaxes()} </td>
                    <td> ${quote12.getUnitPrice()} </td>
                    <td> ${quote12.getWarranty()} </td>
                    <td> ${quote12.getYear() }</td>
                    <td> <a href="/showquote/${quote12.getQuoteid()}" class="show-quote">Show Quote</a></td>
                </tr>
                
                 <tr>
                    <td> ${quote13.getQuoteid()} </td>
                    <td> ${quote13.getAdditionalCharges()} </td>
                    <td> ${quote13.getCompanyid()} </td>
                    <td> ${quote13.getCustomerContact() }</td>
                    <td> ${quote13.getCustomerName()} </td>
                    <td> ${quote13.getDeliveryDate()} </td>
                    <td> ${quote13.getDiscount()} </td>
                    <td> ${quote13.getManufacturer()} </td>
                    <td> ${quote13.getModel()} </td>
                    <td> ${quote13.getPaymentTerms()} </td>
                    <td> ${quote13.getProductDescription()} </td>
                    <td> ${quote13.getProductName()}</td>
                    <td> ${quote13.getQuantity()}</td>
                    <td> ${quote13.getTaxes()} </td>
                    <td> ${quote13.getUnitPrice()} </td>
                    <td> ${quote13.getWarranty()} </td>
                    <td> ${quote13.getYear() }</td>
                     <td> <a href="/showquote/${quote13.getQuoteid()}" class="show-quote">Show Quote</a></td>
                </tr>
     			
     			<tr>
                    <td> ${quote14.getQuoteid()} </td>
                    <td> ${quote14.getAdditionalCharges()} </td>
                    <td> ${quote14.getCompanyid()} </td>
                    <td> ${quote14.getCustomerContact() }</td>
                    <td> ${quote14.getCustomerName()} </td>
                    <td> ${quote14.getDeliveryDate()} </td>
                    <td> ${quote14.getDiscount()} </td>
                    <td> ${quote14.getManufacturer()} </td>
                    <td> ${quote14.getModel()} </td>
                    <td> ${quote14.getPaymentTerms()} </td>
                    <td> ${quote14.getProductDescription()} </td>     
                    <td> ${quote14.getProductName()}</td>
                    <td> ${quote14.getQuantity()}</td>
                    <td> ${quote14.getTaxes()} </td>
                    <td> ${quote14.getUnitPrice()} </td>
                    <td> ${quote14.getWarranty()} </td>
                    <td> ${quote14.getYear() }</td>
                    <td> <a href="/showquote/${quote14.getQuoteid()}" class="show-quote">Show Quote</a></td>
                </tr>
        </tbody>
    </table>
</body>
</html>
