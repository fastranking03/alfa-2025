const form = document.getElementById('myForm');
const companyName = document.getElementById('companyName');
const companyRegNo = document.getElementById('companyRegNo');
const saleType = document.getElementById('saleType');
const mainForm = document.getElementById('main-form');
const busiSection = document.getElementById('business-section');
const addressLine = document.getElementById('addressLine');
const city = document.getElementById('city');
const postcode = document.getElementById('postcode');
const auth_title = document.getElementById('auth_title');
const authfirstname = document.getElementById('authfirstname');
const authlastname = document.getElementById("authlastname")
const authaddress1 = document.getElementById('authaddress1');
const auth_city = document.getElementById('auth_city');
const auth_postcode = document.getElementById('auth_postcode');
const authprimary_phone  = document.getElementById('authprimary_phone');

const current_services  = document.getElementById('current_services');
const cli = document.getElementById('cli');
const siteDetail = document.getElementById('siteDetail'); 

const packageCost = document.getElementById('packageCost');
const packageVAT  = document.getElementById('packageVAT');
const packageIncludingVAT = document.getElementById('packageIncludingVAT');
const paymentFrequency = document.getElementById('contractProvider');
const paymentMode = document.getElementById('paymentMode');
const beneficiaryName = document.getElementById('beneficiaryName');
const bankName = document.getElementById('bankName');
const acNo = document.getElementById('acNo');
const sortCode = document.getElementById('sortCode');
const agentName = document.getElementById('agentName');
const verifyingOfficer = document.getElementById('verifyingOfficer');


// Validate form on submit
form.addEventListener('submit', (event) => {
    let isValid = true;

    // Only validate if "Business" is selected
    if (saleType.value === "Business") {
        if (!companyName.value.trim()) {
            companyName.style.backgroundColor = '#ff00003b';
            isValid = false;
        }
        if (!companyRegNo.value.trim()) {
            companyRegNo.style.backgroundColor = '#ff00003b';
            isValid = false;
        }
 
        if (!addressLine.value.trim()) {
            addressLine.style.backgroundColor = '#ff00003b';
            isValid = false;
        }
        if (!city.value.trim()) {
            city.style.backgroundColor = '#ff00003b';
            isValid = false;
        }
        if (!postcode.value.trim()) {
            postcode.style.backgroundColor = '#ff00003b';
            isValid = false;
        }
       
    }
     if (!auth_title.value.trim()) {
            auth_title.style.backgroundColor = '#ff00003b';
            isValid = false;
        }
        if (!authfirstname.value.trim()) {
            authfirstname.style.backgroundColor = '#ff00003b';
            isValid = false;
        }
        if(!authlastname.value.trim()) {
            authlastname.style.backgroundColor = '#ff00003b';
            isValid = false;
        }
        if (!authaddress1.value.trim()) {
            authaddress1.style.backgroundColor = '#ff00003b';
            isValid = false;
        }
        if (!auth_city.value.trim()) {
            auth_city.style.backgroundColor = '#ff00003b';
            isValid = false;
        }
        if (!auth_postcode.value.trim()) {
            auth_postcode.style.backgroundColor = '#ff00003b';
            isValid = false;
        }
        if (!authprimary_phone.value.trim()) {
            authprimary_phone.style.backgroundColor = '#ff00003b';
            isValid = false;
        }

        if (!current_services.value.trim()) {
            current_services.style.backgroundColor = '#ff00003b';
            isValid = false;
        }
        if (!cli.value.trim()) {
            cli.style.backgroundColor = '#ff00003b';
            isValid = false;
        }
        if (!siteDetail.value.trim()) {
            siteDetail.style.backgroundColor = '#ff00003b';
            isValid = false;
        }
    
        if (!packageCost.value.trim()) {
            packageCost.style.backgroundColor = '#ff00003b';
            isValid = false;
        }
        if (!packageVAT.value.trim()) {
            packageVAT.style.backgroundColor = '#ff00003b';
            isValid = false;
        }
        if (!packageIncludingVAT.value.trim()) {
            packageIncludingVAT.style.backgroundColor = '#ff00003b';
            isValid = false;
        }
        if (!paymentFrequency.value.trim()) {
            paymentFrequency.style.backgroundColor = '#ff00003b';
            isValid = false;
        }
        if (!paymentMode.value.trim()) {
            paymentMode.style.backgroundColor = '#ff00003b';
            isValid = false;
        }
        if (!beneficiaryName.value.trim()) {
            beneficiaryName.style.backgroundColor = '#ff00003b';
            isValid = false;
        }
        if (!bankName.value.trim()) {
            bankName.style.backgroundColor = '#ff00003b';
            isValid = false;
        }
        if (!acNo.value.trim()) {
            acNo.style.backgroundColor = '#ff00003b';
            isValid = false;
        }
        if (!sortCode.value.trim()) {
            sortCode.style.backgroundColor = '#ff00003b';
            isValid = false;
        }
        if (!agentName.value.trim()) {
            agentName.style.backgroundColor = '#ff00003b';
            isValid = false;
        }
        if (!verifyingOfficer.value.trim()) {
            verifyingOfficer.style.backgroundColor = '#ff00003b';
            isValid = false;
        }

    if (!isValid) {
        event.preventDefault();
    }
});

// Remove validation on input
[companyName, companyRegNo,addressLine,city,postcode,auth_title,authfirstname,authlastname,authaddress1,auth_city,auth_postcode
  ,authprimary_phone,current_services,cli,siteDetail,packageCost,packageVAT,packageIncludingVAT
  ,paymentFrequency, paymentMode, beneficiaryName, bankName, acNo, sortCode, agentName, verifyingOfficer
  ,sortCode,agentName,verifyingOfficer
].forEach((input) => {
    input.addEventListener('input', () => {
        if (input.value.trim()) {
            input.style.backgroundColor = '';
        }
    });
});

// Handle saleType change
saleType.addEventListener('change', () => {
    const saleval = saleType.value;

    if (saleval === "Business") {
        mainForm.style.display = "block";
        busiSection.style.display = "block";
    } else if (saleval === "Consumer") {
        busiSection.style.display = "none";
        mainForm.style.display = "block";
        // Reset and remove validation for business-section fields
        [companyName, companyRegNo].forEach((input) => {
            input.value = ''; // Clear the value
            input.style.backgroundColor = ''; // Reset background color
            input.style.border = '';
        });
    }
});


//  Payment Mode

var creditCard = document.getElementById("creditCard");
var directDebit = document.getElementById("directDebit");
 
// Assuming form elements for validation
var creditCardFields = document.querySelectorAll("#creditCard input, #creditCard select");
var directDebitFields = document.querySelectorAll("#directDebit input, #directDebit select");

paymentMode.addEventListener('change', function() {
    var paymentVal = paymentMode.value;

    // Reset all validation before applying the new one
    resetValidation();

    if (paymentVal == "Credit Card") {
        directDebit.style.display = "none";
        creditCard.style.display = "flex";

        // Apply validation for Credit Card fields
        creditCardFields.forEach(function(field) {
            field.required = true; // or any other validation you use
            field.style.border = ''; // Reset border if necessary
        });

    } else if (paymentVal == "Direct Debit") {
        creditCard.style.display = "none";
        directDebit.style.display = "flex";

        // Apply validation for Direct Debit fields
        directDebitFields.forEach(function(field) {
            field.required = true; // or any other validation you use
            field.style.border = ''; // Reset border if necessary
        });

    } else {
        creditCard.style.display = "none";
        directDebit.style.display = "none";

        // Remove validation for both Credit Card and Direct Debit
        resetValidation();
    }
});

// Function to reset validation (remove "required" and any styles for fields not used)
function resetValidation() {
    creditCardFields.forEach(function(field) {
        field.required = false;
        field.style.border = ''; // Reset border if necessary
    });
    directDebitFields.forEach(function(field) {
        field.required = false;
        field.style.border = ''; // Reset border if necessary
    });
}

 
form.addEventListener('submit', function(event) {
    var paymentVal = paymentMode.value;
    var isValid = true;

    if (paymentVal == "Credit Card") {
        creditCardFields.forEach(function(field) {
            if (!field.value.trim()) {
                field.style.border = '2px solid #ff0000'; // Example of highlighting invalid fields
                isValid = false;
            }
        });
    } else if (paymentVal == "Direct Debit") {
        directDebitFields.forEach(function(field) {
            if (!field.value.trim()) {
                field.style.border = '2px solid #ff0000'; // Example of highlighting invalid fields
                isValid = false;
            }
        });
    }

    if (!isValid) {
        event.preventDefault(); // Prevent form submission if validation fails
    }
});


document.getElementById('add-main-btn').addEventListener('click', function () {
    const formContainer = document.getElementById('form-container');
  
    // Create a new container for the Offer Package Details
    const newRow = document.createElement('div');
    newRow.classList.add('offer-package-details-container');
    const newIndex = formContainer.querySelectorAll('.offer-package-details-container').length;
    newRow.innerHTML = `
        <div id="offerPackageDetail" class="offer-package-details" style="margin-top: 20px;">
            <div style="display: flex; justify-content: space-between;">
                <h3>Offer Package Details</h3>
                <button class="close-btn btn btn-danger ">X</button>
            </div>
            <div class="row">
                <div class="col-md-4">
                    <label for="cli" class="form-label">CLI</label>
                    <input type="text" id="cli" class="form-control" name="another_cli[]" />
                </div>
                <div class="col-md-8">
                    <label for="siteDetail" class="form-label">Site Detail</label>
                    <input type="text" id="siteDetail" class="form-control" name="site_address[]" />
                </div>
            </div>
            <div class="row mt-3">
                <div class="col-md-6">
                    <label for="packageOffered" class="form-label">Package Offered</label>
                    <select id="packageOffered" class="form-select" name="plan_name[]">
                        <option selected>Choose Package</option>
                        <option value="1">One</option>
                    </select>
                </div>
                <div class="col-md-2">
                    <label for="packageCost" class="form-label">Cost</label>
                    <input type="text" id="packageCost" class="form-control" name="plan_cost[]" />
                </div>
                <div class="col-md-2">
                    <label for="packageVAT" class="form-label">VAT</label>
                    <input type="text" id="packageVAT" class="form-control" name="vat[]" />
                </div>
                <div class="col-md-2">
                    <label for="packageIncludingVAT" class="form-label">Including VAT</label>
                    <input type="text" id="packageIncludingVAT" class="form-control" name="including_vat[]" />
                </div>
            </div>
  
            <!-- Add more rows dynamically (example for Calling Features) -->
            <div class="callingFeaturesContainer">
                <div class="row mt-3">
                    <div class="col-md-6">
                        <label for="callingFeatures" class="form-label">Calling Features</label>
                        <select class="form-select" name="callingFeatures[]">
                            <option selected>Choose Feature</option>
                            <option value="1">Feature 1</option>
                        </select>
                    </div>
                    <div class="col-md-2">
                        <label for="callingFeaturesCost" class="form-label">Cost</label>
                        <input type="text" class="form-control" name="callingFeaturesCost[]" />
                    </div>
                    <div class="col-md-2">
                        <label for="callingFeaturesVAT" class="form-label">VAT</label>
                        <input type="text" class="form-control" name="callingFeaturesVAT[]" />
                    </div>
                    <div class="col-md-2">
                        <label for="callingFeaturesIncludingVAT" class="form-label">Including VAT</label>
                        <input type="text" class="form-control" name="callingFeaturesIncludingVAT[]" />
                    </div>
                </div>
                <button class="add-more-btn1 btn-add" type="button"> + </button>
            </div>
  
            <!-- Add Ons Section -->
            <div class="addOnsContainer">
                <div class="row mt-3">
                    <div class="col-md-6">
                        <label for="addOns" class="form-label">Add Ons</label>
                        <select id="addOns" class="form-select" name="add_ons[]">
                            <option selected>Choose Add-On</option>
                            <option value="1">Add-On 1</option>
                        </select>
                    </div>
                    <div class="col-md-2">
                        <label for="addOnsCost" class="form-label">Cost</label>
                        <input type="text" id="addOnsCost" class="form-control" name="addonscost[]" />
                    </div>
                    <div class="col-md-2">
                        <label for="addOnsVAT" class="form-label">VAT</label>
                        <input type="text" id="addOnsVAT" class="form-control" name="addonsvat[]" />
                    </div>
                    <div class="col-md-2">
                        <label for="addOnsIncludingVAT" class="form-label">Including VAT</label>
                        <input type="text" id="addOnsIncludingVAT" class="form-control" name="addonsincludingvat[]" />
                    </div>
                </div>
                <button class="add-more-btn2 btn-add" type="button"> + </button>
            </div>
  
            <!-- One-Off Charges Section -->
            <div class="oneOffContainer">
                <div class="row mt-3">
                    <div class="col-md-6">
                        <label for="productService" class="form-label">Product Service</label>
                        <select id="productService" class="form-select" name="product_services[]">
                            <option selected>Choose Service</option>
                            <option value="1">Service 1</option>
                        </select>
                    </div>
                    <div class="col-md-2">
                        <label for="productServiceCost" class="form-label">Cost</label>
                        <input type="text" id="productServiceCost" class="form-control" name="productservicecost[]" />
                    </div>
                    <div class="col-md-2">
                        <label for="productServiceVAT" class="form-label">VAT</label>
                        <input type="text" id="productServiceVAT" class="form-control" name="productservicevat[]" />
                    </div>
                    <div class="col-md-2">
                        <label for="productServiceIncludingVAT" class="form-label">Including VAT</label>
                        <input type="text" id="productServiceIncludingVAT" class="form-control" name="productserviceincludingvat[]" />
                    </div>
                </div>
                <button class="add-more-btn3 btn-add" type="button"> + </button>
            </div>
        </div>
    `;
  
    formContainer.appendChild(newRow);
  
    // Close button to remove the entire section
    const closeBtn = newRow.querySelector('.close-btn');
    closeBtn.addEventListener('click', function () {
        formContainer.removeChild(newRow);
    });
  
    
    // Add dynamic row handling for Calling section
    const addCallingRowBtn = newRow.querySelector('.add-more-btn1');
    const callingFeaturesContainer = newRow.querySelector('.callingFeaturesContainer');
  
    addCallingRowBtn.addEventListener('click', function () {
        const newCallingRow = document.createElement('div');

        newCallingRow.classList.add('row');
        newCallingRow.innerHTML = `
          <div class="row mt-3">
            <div class="col-md-6">
                <label for="callingFeatures" class="form-label">Calling Features</label>
                <select class="form-select" name="callingFeatures[]">
                    <option selected>Choose Feature</option>
                    <option value="1">Feature 1</option>
                </select>
            </div>
            <div class="col-md-2">
                <label for="callingFeaturesCost" class="form-label">Cost</label>
                <input type="text" class="form-control" name="callingFeaturesCost[]" />
            </div>
            <div class="col-md-2">
                <label for="callingFeaturesVAT" class="form-label">VAT</label>
                <input type="text" class="form-control" name="callingFeaturesVAT[]" />
            </div>
            <div class="col-md-2">
                <label for="callingFeaturesIncludingVAT" class="form-label">Including VAT</label>
                <input type="text" class="form-control" name="callingFeaturesIncludingVAT[]" />
            </div>
          </div>
           <div class="col-md-2 my-1">
                <button type="button" class="btn btn-danger remove-btn">Close</button>
            </div>
        `;
        callingFeaturesContainer.insertBefore(newCallingRow, addCallingRowBtn);
  
        // Attach the remove button functionality for each new row
        const removeBtn = newCallingRow.querySelector('.remove-btn');
        removeBtn.addEventListener('click', function () {
            callingFeaturesContainer.removeChild(newCallingRow);
        });
    });
  

    // Repeat for Add-Ons sections
    const addOnRowBtn = newRow.querySelector('.add-more-btn2');
    const addOnsContainer = newRow.querySelector('.addOnsContainer');
  
    addOnRowBtn.addEventListener('click', function () {
        const newAddOnRow = document.createElement('div');
        newAddOnRow.classList.add('row');
        newAddOnRow.innerHTML = `
        <div class="row mt-3">
            <div class="col-md-6">
                <label for="addOns" class="form-label">Add Ons</label>
                <select id="addOns" class="form-select" name="add_ons[]">
                    <option selected>Choose Add-On</option>
                    <option value="1">Add-On 1</option>
                </select>
            </div>
            <div class="col-md-2">
                <label for="addOnsCost" class="form-label">Cost</label>
                <input type="text" class="form-control" name="addonscost[]" />
            </div>
            <div class="col-md-2">
                <label for="addOnsVAT" class="form-label">VAT</label>
                <input type="text" class="form-control" name="addonsvat[]" />
            </div>
            <div class="col-md-2">
                <label for="addOnsIncludingVAT" class="form-label">Including VAT</label>
                <input type="text" class="form-control" name="addonsincludingvat[]" />
            </div>
            <div class="col-md-2 mt-2">
                <button type="button" class="btn btn-danger remove-btn">Close</button>
            </div>
        `;
        addOnsContainer.insertBefore(newAddOnRow, addOnRowBtn);
  
        // Attach the remove button functionality for each new add-on row
        const removeAddOnBtn = newAddOnRow.querySelector('.remove-btn');
        removeAddOnBtn.addEventListener('click', function () {
            addOnsContainer.removeChild(newAddOnRow);
        });
    });
  

    // Repeat for One-Off Charges sections
    const addOneOffRowBtn = newRow.querySelector('.add-more-btn3');
    const oneOffContainer = newRow.querySelector('.oneOffContainer');
  
    addOneOffRowBtn.addEventListener('click', function () {
        const newOneOffRow = document.createElement('div');
        newOneOffRow.classList.add('row');
        newOneOffRow.innerHTML = `
        <div class="row mt-3">
            <div class="col-md-6">
                <label for="productService" class="form-label">Product Service</label>
                <select id="productService" class="form-select" name="product_services[]">
                    <option selected>Choose Service</option>
                    <option value="1">Service 1</option>
                </select>
            </div>
            <div class="col-md-2">
                <label for="productServiceCost" class="form-label">Cost</label>
                <input type="text" id="productServiceCost" class="form-control" name="productservicecost[]" />
            </div>
            <div class="col-md-2">
                <label for="productServiceVAT" class="form-label">VAT</label>
                <input type="text" id="productServiceVAT" class="form-control" name="productservicevat[]" />
            </div>
            <div class="col-md-2">
                <label for="productServiceIncludingVAT" class="form-label">Including VAT</label>
                <input type="text" id="productServiceIncludingVAT" class="form-control" name="productserviceincludingvat[]" />
            </div>
            <div class="col-md-2 mt-2">
                <button type="button" class="btn btn-danger remove-btn">Close</button>
            </div>
        `;
        oneOffContainer.insertBefore(newOneOffRow, addOneOffRowBtn);
  
        // Attach the remove button functionality for each new one-off row
        const removeOneOffBtn = newOneOffRow.querySelector('.remove-btn');
        removeOneOffBtn.addEventListener('click', function () {
            oneOffContainer.removeChild(newOneOffRow);
        });
    });
  });
  

  // Initially adding close functionality for the first form row
  document.querySelectorAll('.close-btn').forEach(function(button) {
    button.addEventListener('click', function() {
        const formContainer = document.getElementById('form-container');
        formContainer.removeChild(button.closest('.row.mb-3'));
    });
  });
  
  // Add more rows functionality
  document.querySelectorAll('.add-more-btn1').forEach(function(button) {
    button.addEventListener('click', function() {
      // Find the parent .callingContainer, not just .row
      const container = button.closest('.callingFeaturesContainer'); // Make sure to target the container correctly
  
      // Create a new row to append
      const moreRow = document.createElement('div');
      moreRow.classList.add('row');  // Set classes for the row
  
      moreRow.innerHTML = `
        <div class="row mt-3">
          <div class="col-md-6">
            <label for="callingFeatures" class="form-label">Calling Features</label>
            <select class="form-select" name="callingFeatures[]">
              <option selected>Choose Feature</option>
              <option value="1">Feature 1</option>
            </select>
          </div>
          <div class="col-md-2">
            <label for="callingFeaturesCost" class="form-label">Cost</label>
            <input type="text" class="form-control" name="callingFeaturesCost[]" />
          </div>
          <div class="col-md-2">
            <label for="callingFeaturesVAT" class="form-label">VAT</label>
            <input type="text" class="form-control" name="callingFeaturesVAT[]" />
          </div>
          <div class="col-md-2">
            <label for="callingFeaturesIncludingVAT" class="form-label">Including VAT</label>
            <input type="text" class="form-control" name="callingFeaturesIncludingVAT[]" />
          </div>
          <div class="col-md-2 mt-2">
            <button type="button" class="btn btn-danger remove-btn">Close</button>
          </div>
        </div>
      `;
  
      // Append the new row just before the "Add Row" button
      const addMoreBtn = container.querySelector('.add-more-btn1');
      container.insertBefore(moreRow, addMoreBtn);  // Insert before the "Add More" button
  
      // Add close functionality to the newly added row
      const closeBtn = moreRow.querySelector('.remove-btn');
      closeBtn.addEventListener('click', function() {
        // When the close button is clicked, remove the row
        moreRow.remove();
      });
    });
  });
  
  
  
  // Add more rows functionality for the Add-Ons section
  document.querySelectorAll('.add-more-btn2').forEach(function(button) {
    button.addEventListener('click', function() {
      // Find the parent .addOnsContainer, not just .row
      const container = button.closest('.addOnsContainer'); 
  
      // Create a new row to append
      const moreRow = document.createElement('div');
      moreRow.classList.add('row');  // Set classes for the row
  
      // Create a new row with a unique structure for Add-Ons
      moreRow.innerHTML = `
        <div class="row mt-3">
          <div class="col-md-6">
            <label for="addOns" class="form-label">Add Ons</label>
            <select id="addOns" class="form-select" name="add_ons[]">
              <option selected>Choose Add-On</option>
              <option value="1">Add-On 1</option>
            </select>
          </div>
          <div class="col-md-2">
            <label for="addOnsCost" class="form-label">Cost</label>
            <input type="text" class="form-control" name="addonscost[]" />
          </div>
          <div class="col-md-2">
            <label for="addOnsVAT" class="form-label">VAT</label>
            <input type="text" class="form-control" name="addonsvat[]" />
          </div>
          <div class="col-md-2">
            <label for="addOnsIncludingVAT" class="form-label">Including VAT</label>
            <input type="text" class="form-control" name="addonsincludingvat[]" />
          </div>
          <div class="col-md-2 mt-2">
            <button type="button" class="btn btn-danger remove-btn">Close</button>
          </div>
        </div>
      `;
  
      // Find the "Add More" button to insert the new row before it
      const addMoreBtn = container.querySelector('.add-more-btn2');
      container.insertBefore(moreRow, addMoreBtn); // Insert the row before the "Add More" button
  
      // Add close functionality to the newly added row
      const closeBtn = moreRow.querySelector('.remove-btn'); // Updated to use 'remove-btn' class
      closeBtn.addEventListener('click', function() {
        // When the close button is clicked, remove the row
        moreRow.remove();
      });
    });
  });
  
  
  // PRODUCT SERVICE - Add More functionality
  document.querySelectorAll('.add-more-btn3').forEach(function(button) {
    button.addEventListener('click', function() {
      // Find the parent .oneOffContainer, not just .row
      const container = button.closest('.oneOffContainer'); 
  
      // Create a new row to append
      const moreRow = document.createElement('div');
      moreRow.classList.add('row');  // Set classes for the row
      
      // Create a new row for Product Service (ensure unique ids for each input)
      moreRow.innerHTML = `
        <div class="row mt-3">
          <div class="col-md-6">
            <label for="productService" class="form-label">Product Service</label>
            <select class="form-select" name="product_services[]">
              <option selected>Choose Service</option>
              <option value="1">Service 1</option>
            </select>
          </div>
          <div class="col-md-2">
            <label for="productServiceCost" class="form-label">Cost</label>
            <input type="text" class="form-control" name="productservicecost[]" />
          </div>
          <div class="col-md-2">
            <label for="productServiceVAT" class="form-label">VAT</label>
            <input type="text" class="form-control" name="productservicevat[]" />
          </div>
          <div class="col-md-2">
            <label for="productServiceIncludingVAT" class="form-label">Including VAT</label>
            <input type="text" class="form-control" name="productserviceincludingvat[]" />
          </div>
          <div class="col-md-2 mt-2">
            <button type="button" class="btn btn-danger remove-btn">Close</button>
          </div>
        </div>
      `;
  
      // Find the "Add More" button to insert the new row just before it
      const addMoreBtn = container.querySelector('.add-more-btn3');
      container.insertBefore(moreRow, addMoreBtn); // Insert the row before the "Add More" button
  
      // Add close functionality to the newly added row
      const closeBtn = moreRow.querySelector('.remove-btn'); // Make sure the class name is consistent
      closeBtn.addEventListener('click', function() {
        moreRow.remove(); // Simply remove the row when close button is clicked
      });
    });
  });
  
  

  /*Authorised Person*/ 
// JavaScript for adding the form dynamically (without clone)

// Add click event listener to the "Add More" button
document.querySelector('.btn-add').addEventListener('click', function() {
    // Get the parent container where new sections will be added
    const container = document.getElementById('auth-persons-container');
  
    // Create a new form section (HTML structure)
    const newFormSection = `
      <div class="form-cards" style="margin: 0px 15px; margin-top: 20px; padding: 20px;">
        <div style="display: flex; justify-content: space-between;">
          <h3>Authorised Person Details</h3>
          <button class="close-btn btn btn-danger">X</button>
        </div>
        <div class="row row-cols-2 row-cols-lg-5 g-2 g-lg-3">
          <div class="col-md-2">
            <label for="inputPassword5" class="form-label">Title</label>
            <select class="form-select" aria-label="Default select example" name="title[]">
              <option selected disabled>Select</option>
              <option value="Mr">Mr.</option>
              <option value="Mrs">Mrs.</option>
              <option value="Ms">Ms.</option>
              <option value="Dr">Dr.</option>
              <option value="Prof">Prof.</option>
            </select>
          </div>
          <div class="col-md-4">
            <label for="inputPassword5" class="form-label">First Name</label>
            <input type="text" class="form-control" name="authfirstname[]" />
          </div>
          <div class="col-md-3">
            <label for="inputPassword5" class="form-label">Middle Name</label>
            <input type="text" class="form-control" name="authmiddlename[]" />
          </div>
          <div class="col-md-3">
            <label for="inputPassword5" class="form-label">Last Name</label>
            <input type="text" class="form-control" name="authlastname[]" />
          </div>
        </div>

        <div class="row row-cols-2 row-cols-lg-5 g-2 g-lg-3 my-1">
          <div class="col-md-3">
            <label for="inputPassword5" class="form-label">Date Of Birth</label>
            <input type="date" class="form-control" name="authdob[]" />
          </div>
          <div class="col-md-3">
            <label for="inputPassword5" class="form-label">Gender</label>
            <select class="form-select" name="authgender[]">
              <option selected disabled>Select</option>
              <option value="Male">Male</option>
              <option value="Female">Female</option>
              <option value="Other">Other</option>
            </select>
          </div>
        </div>

        <div class="row row-cols-2 row-cols-lg-5 g-2 g-lg-3 my-1">
          <div class="col-md-3">
            <label for="inputPassword5" class="form-label">Address Line 1</label>
            <input type="text" class="form-control" name="authaddress1[]" />
          </div>
          <div class="col-md-3">
            <label for="inputPassword5" class="form-label">Address Line 2</label>
            <input type="text" class="form-control" name="authaddress2[]" />
          </div>
          <div class="col-md-2">
            <label for="inputPassword5" class="form-label">City</label>
            <input type="text" class="form-control" name="authcity[]" />
          </div>
          <div class="col-md-2">
            <label for="inputPassword5" class="form-label">State</label>
            <input type="text" class="form-control" name="authstate[]" />
          </div>
          <div class="col-md-2">
            <label for="inputPassword5" class="form-label">Postal Code</label>
            <input type="text" class="form-control" name="authpostcode[]" />
          </div>
        </div>

        <div class="row row-cols-2 row-cols-lg-5 g-2 g-lg-3 my-1">
          <div class="col-md-3">
            <label for="authprimary_phone" class="form-label">Primary Phone</label>
            <input type="tel" name="authprimary_phone[]" id="authprimary_phone" class="form-control" pattern="[1-3][0-9]{9}">
          </div>
          <div class="col-md-3">
            <label for="authsecondary_phone" class="form-label">Secondary Phone</label>
            <input type="text" class="form-control" name="authsecondary_phone[]" />
          </div>
          <div class="col-md-3">
            <label for="inputPassword5" class="form-label">Primary Mobile</label>
            <input type="text" class="form-control" name="authprimary_mobile[]" />
          </div>
          <div class="col-md-3">
            <label for="inputPassword5" class="form-label">Secondary Mobile</label>
            <input type="text" class="form-control" name="authsecondary_mobile[]" />
          </div>
        </div>

        <div class="row row-cols-2 row-cols-lg-5 g-2 g-lg-3 my-1">
          <div class="col-md-6">
            <label for="authprimaryemail" class="form-label">Primary Email</label>
            <input type="email" class="form-control" name="authprimaryemail[]" />
          </div>
          <div class="col-md-6">
            <label for="authsecondryemail" class="form-label">Secondary Email</label>
            <input type="email" class="form-control" name="authsecondryemail[]" />
          </div>
        </div>
      </div>
    `;
  
    // Append the new form section to the container
    container.insertAdjacentHTML('beforeend', newFormSection);

    // Attach event listener to close button of the new form section
    const closeBtn = container.querySelector('.form-cards:last-child .close-btn');
    closeBtn.addEventListener('click', function () {
      closeBtn.closest('.form-cards').remove();
    });
});
