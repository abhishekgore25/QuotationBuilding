<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Quotation Form</title>
<style>
    body {
        margin: 0;
        padding: 0;
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        background-color: #f2f2f2;
    }
    #form-container {
        max-width: 600px;
        margin: 50px auto;
        background: #fff;
        padding: 30px;
        border-radius: 10px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        transition: background-color 0.3s, font-weight 0.3s, font-size 0.3s;
    }
    #form-container:hover {
        background-color: #e1f5fe;
        font-weight: bold;
    }
    #form-container:hover h2 {
        font-size: 32px;
    }
    h2 {
        text-align: center;
        margin-bottom: 30px;
        transition: font-size 0.3s;
    }
    label {
        display: block;
        margin-bottom: 5px;
        font-weight: bold;
    }
    input[type="text"],
    input[type="number"],
    select,
    textarea {
        width: 100%;
        padding: 10px;
        margin-bottom: 20px;
        border: 1px solid #ccc;
        border-radius: 5px;
        box-sizing: border-box;
    }
    input[type="submit"] {
        background-color: #4CAF50;
        color: white;
        padding: 15px 20px;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        width: 100%;
    }
    input[type="submit"]:hover {
        background-color: #45a049;
    }
    /* Background Image */
    body {
        background-image: url('background3.png');
        background-size: cover;
    }
</style>
</head>
<body>

<div id="form-container">
    <h2>Quotation Form</h2>
    <form action="/savequote">
        <label for="productName">Product/Service Name:</label>
        <input type="text" id="productName" name="productName" value="${quote.getProductName()} ">

        <label for="productDescription">Product/Service Description:</label>
        <textarea id="productDescription" name="productDescription" value="${quote.getProductDescription()} "></textarea>

        <label for="quantity">Quantity:</label>
        <input type="text" id="quantity" name="quantity" default="${quote.getQuantity()} ">

        <label for="unitPrice">Unit Price:</label>
        <input type="text" id="unitPrice" name="unitPrice" value="${quote.getUnitPrice()} ">

        <label for="discount">Discount (%):</label>
        <input type="text" id="discount" name="discount" value="${quote.getDiscount()} ">

        <label for="manufacturer">Manufacturer/Brand:</label>
        <input type="text" id="manufacturer" name="manufacturer" value="${quote.getManufacturer()} ">

        <label for="model">Model/Type:</label>
        <input type="text" id="model" name="model" value="${quote.getModel()} " >

        <label for="year">Year of Manufacture:</label>
        <input type="text" id="year" name="year" value="${quote.getYear()} ">

        <label for="warranty">Warranty Information:</label>
        <input type="text" id="warranty" name="warranty" value="${quote.getWarranty()} ">

        <label for="deliveryDate">Delivery Date:</label>
        <input type="text" id="deliveryDate" name="deliveryDate" value="${quote.getDeliveryDate()} ">

        <label for="paymentTerms">Payment Terms:</label>
        <select id="paymentTerms" name="paymentTerms" value="${quote.getPaymentTerms()} ">
            <option value="Net 60 Days" selected>Net 60 Days</option>
            <option value="Net 30 Days">Net 30 Days</option>
            <option value="Net 90 Days">Net 90 Days</option>
            <option value="Upon Receipt">Upon Receipt</option>
        </select>

        <label for="taxes">Taxes:</label>
        <input type="text" id="taxes" name="taxes" value="${quote.getTaxes()} ">

        <label for="additionalCharges">Additional Charges:</label>
        <input type="text" id="additionalCharges" name="additionalCharges" value="${quote.getAdditionalCharges()} ">

        <label for="customerName">Customer Name:</label>
        <input type="text" id="customerName" name="customerName" value="${quote.getCustomerName()} ">

        <label for="customerContact">Customer Contact:</label>
        <input type="text" id="customerContact" name="customerContact" value="${quote.getCustomerContact()}">

        <input type="submit" value="Update Quotation">
    </form>
</div>

</body>
</html>