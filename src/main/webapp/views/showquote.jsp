<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Quotation</title>
<style>
    body {
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        background: url('background2.png') no-repeat center center fixed;
        background-size: cover;
        margin: 0;
        padding: 0;
    }
    .quotation-container {
        max-width: 600px;
        margin: 50px auto;
        background: rgba(255, 255, 255, 0.8);
        padding: 30px;
        border-radius: 10px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }
    h2 {
        text-align: center;
        margin-bottom: 30px;
    }
    .section {
        margin-bottom: 20px;
        border-bottom: 2px solid #ccc;
        padding-bottom: 20px;
    }
    .section:last-child {
        border-bottom: none;
        padding-bottom: 0;
    }
    .section-title {
        font-weight: bold;
        margin-bottom: 10px;
        color: #333;
    }
    .field {
        margin-bottom: 10px;
    }
    .label {
        font-weight: bold;
        color: #555;
    }
    .value {
        margin-left: 10px;
        color: #777;
    }
    .print-button {
        text-align: center;
        margin-top: 20px;
    }
    .print-button button {
        padding: 10px 20px;
        background-color: #4CAF50;
        color: white;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        font-size: 16px;
    }
    .print-button button:hover {
        background-color: #45a049;
    }
</style>
</head>
<body>

<div class="quotation-container">
    <h2>Quotation</h2>
    
    <div class="section">
        <div class="section-title"><hr></>Main Details<hr></div>
        <div class="field">
            <span class="label">Delivery Date:</span>
            <span class="value">${quote.deliveryDate}</span>
        </div>
        <div class="field">
            <span class="label">Payment Terms:</span>
            <span class="value">${quote.paymentTerms}</span>
        </div>
        <div class="field">
            <span class="label">Taxes:</span>
            <span class="value">${quote.taxes}</span>
        </div>
        <div class="field">
            <span class="label">Additional Charges:</span>
            <span class="value">${quote.additionalCharges}</span>
        </div>
    </div>
    
    <div class="section">
        <div class="section-title">Product Details<hr></div>
        <div class="field">
            <span class="label">Product/Service Name:</span>
            <span class="value">${quote.productName}</span>
        </div>
        <div class="field">
            <span class="label">Product/Service Description:</span>
            <span class="value">${quote.productDescription}</span>
        </div>
        <div class="field">
            <span class="label">Quantity:</span>
            <span class="value">${quote.quantity}</span>
        </div>
        <div class="field">
            <span class="label">Unit Price:</span>
            <span class="value">${quote.unitPrice}</span>
        </div>
        <div class="field">
            <span class="label">Discount (%):</span>
            <span class="value">${quote.discount}</span>
        </div>
    </div>
    
    <div class="section">
        <div class="section-title">Manufacturer Details<hr></div>
        <div class="field">
            <span class="label">Manufacturer/Brand:</span>
            <span class="value">${quote.manufacturer}</span>
        </div>
        <div class="field">
            <span class="label">Model/Type:</span>
            <span class="value">${quote.model}</span>
        </div>
        <div class="field">
            <span class="label">Year of Manufacture:</span>
            <span class="value">${quote.year}</span>
        </div>
        <div class="field">
            <span class="label">Warranty Information:</span>
            <span class="value">${quote.warranty}</span>
        </div>
    </div>
    
    <div class="section">
        <div class="section-title">Customer Information<hr></div>
        <div class="field">
            <span class="label">Customer Name:</span>
            <span class="value">${quote.customerName}</span>
        </div>
        <div class="field">
            <span class="label">Customer Contact:</span>
            <span class="value">${quote.customerContact}</span>
        </div>
    </div>
    
    <div class="print-button">
        <button onclick="window.print()">Print</button>
    </div>
</div>

</body>
</html>