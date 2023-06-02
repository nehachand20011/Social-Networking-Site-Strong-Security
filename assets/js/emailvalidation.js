




// const validateName = () => {
//     const name = document.getElementById("name").value.trim();
//     const messageContainer = document.getElementById("spanname");
  
//     if (name === "") {
//       displayMessage("Please enter a name", "red", messageContainer);
//     } else if (name.length < 3) {
//       displayMessage("Name must be at least 3 characters long", "red", messageContainer);
//     } else if (!name.match(/^[A-Z][a-zA-Z]{2,20}$/)) {
//       displayMessage("Name must start with an uppercase letter and have 3-20 characters", "red", messageContainer);
//     } else {
//       displayMessage("Name is valid", "green", messageContainer);
//     }
//   };
  
//   const displayMessage1 = (message, color, element) => {
//     element.textContent = message;
//     element.style.color = color;
//   };
  



// const validatePassword = () => {
//     const password = document.getElementById("password").value.trim();
//     const messageContainer = document.getElementById("spanpassword");

//     if (password === "") {
//       displayMessage("Please enter a password", "red", messageContainer);
//     } else if (password.length < 4) {
//       displayMessage("Password must be at least 8 characters long", "red", messageContainer);
//     } else if (!password.match(/^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[!@#$%^&*])[a-zA-Z\d!@#$%^&*]+$/)) {
//       displayMessage("Password must contain at least one uppercase letter, one lowercase letter, one digit, and one special character", "red", messageContainer);
//     } else {
//       displayMessage("Password is valid", "green", messageContainer);
//     }
//   };

//   const displayMessage = (message, color, element) => {
//     element.textContent = message;
//     element.style.color = color;
//   };