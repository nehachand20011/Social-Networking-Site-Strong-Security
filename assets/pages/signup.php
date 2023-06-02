
<!-- <script src="assest/js/script.js" defer></script> -->
<!-- <script src="assest/js/emailvalidation.js" defer></script> -->


<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css">




    <div class="login">
        <div class="col-lg-4 col-md-8 col-sm-12 bg-white border rounded p-4 shadow-sm">
            <form method="post" action="assets/php/actions.php?signup"  onsubmit="return Validatepassword()">
                <div class="d-flex justify-content-center">

                    <img class="mb-4" src="assets/images/HamroChautari.png" alt="" height="45">
                </div>
                <h1 class="h5 mb-3 fw-normal">Create new account</h1>
                <div class="d-flex">
                    <div class="form-floating mt-1 col-6 ">
                        <input type="text" name="first_name" value="<?=showFormData('first_name')?>" class="form-control rounded-0" placeholder="username/email">
                        <label for="floatingInput">first name</label>
                    </div>
                    <div class="form-floating mt-1 col-6">
                        <input type="text" name="last_name" value="<?=showFormData('last_name')?>" class="form-control rounded-0" placeholder="username/email">
                        <label for="floatingInput">last name</label>
                    </div>
                </div>
                
                <?=showError('first_name')?>
                <?=showError('last_name')?>

                <div class="d-flex gap-3 my-3">
                    <div class="form-check">
                        <input class="form-check-input" type="radio" name="gender" id="exampleRadios1"
                            value="1" <?=isset($_SESSION['formdata'])?'':'checked'?><?=showFormData('gender')==1?'checked':''?>>
                        <label class="form-check-label" for="exampleRadios1">
                            Male
                        </label>
                    </div>
                    <div class="form-check">
                        <input class="form-check-input" type="radio" name="gender" id="exampleRadios3"
                            value="2" <?=showFormData('gender')==2?'checked':''?>>
                        <label class="form-check-label" for="exampleRadios3">
                            Female
                        </label>
                    </div>
                    <div class="form-check">
                        <input class="form-check-input" type="radio" name="gender" id="exampleRadios2"
                            value="0" <?=showFormData('gender')==0?'checked':''?>>
                        <label class="form-check-label" for="exampleRadios2">
                            Other
                        </label>
                    </div>
                </div>
                
                <div class="form-floating mt-1">
                    <input type="email" name="email" id="email" value="<?=showFormData('email')?>" class="form-control rounded-0" placeholder="username/email">
                    <label for="floatingInput">Email</label>

                </div>
                
                <?=showError('email')?>

                <div class="form-floating mt-1">
                    <input type="text" name="username" value="<?=showFormData('username')?>" class="form-control rounded-0" placeholder="username/email">
                    <label for="floatingInput">Username</label>
                </div>
                <?=showError('username')?>

                <div class="form-floating mt-1">
                    
                    <input type="password" name="password" class="form-control rounded-0" id="floatingPassword" placeholder="Password"  >

                    <label for="floatingPassword">Password</label>
                    
                </div>
                

            
                <div class="form-floating mt-1" >
                    <input type="password" name="password" class="form-control rounded-0" id="confloatingPassword" placeholder="Password" >
                    
          
                    <label for="floatingPassword" >Confirm password</label>
                    <span id="conpass" ></span>

                </div>

                


                <?=showError('password')?>
                
                <div class="mt-3 d-flex justify-content-between align-items-center">
                    <button class="btn btn-primary" type="submit">Sign Up</button>
                    <a href="?login" class="text-decoration-none">Already have an account ?</a>

                </div>

            </form>
        </div>
    </div>




     <!-- <script type="text/javascript">
function Validatepassword()
{

var pass=document.getElementById('floatingPassword').value;
var conpass=document.getElementById('confloatingPassword').value;
if(conpass!=pass)
{
    alert("password doestnot match");
    return false;
};

 }

function isEmailValid(email) {
    // Email validation regex pattern
    var emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
    return emailRegex.test(email);
} 


 </script>  -->







<!-- Your HTML code... -->

<script type="text/javascript">
function Validatepassword() {
    var pass = document.getElementById('floatingPassword').value;
    var conpass = document.getElementById('confloatingPassword').value;

    if (conpass !== pass) {
        alert("Passwords do not match");
        return false;
    }

    var firstName = document.getElementsByName('first_name')[0].value;
    var lastName = document.getElementsByName('last_name')[0].value;

    if (firstName.trim() === '' || lastName.trim() === '') {
        alert("Please enter your first name and last name.");
        return false;
    }

    var email = document.getElementById('email').value;
    if (!isEmailValid(email)) {
        alert("Please enter a valid email address.");
        return false;
    }


    var username = document.getElementsByName('username')[0].value;
    if (username.trim() === '') {
        alert("Please enter a username.");
        return false;
    }


    if (!isStrongPassword(pass)) {
        alert("Password must be at least 8 characters long and contain at least one uppercase letter, one lowercase letter, one number, and one special character.");
        return false;
    }
    return true;
}

function isStrongPassword(password) {
    // Password must be at least 8 characters long and contain at least one uppercase letter, one lowercase letter, one number, and one special character.
    var passwordRegex = /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$/;
    return passwordRegex.test(password);
}

function isEmailValid(email) {
    // Email validation regex pattern
    var emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
    return emailRegex.test(email);
}
</script>

<!-- Remaining code... -->
