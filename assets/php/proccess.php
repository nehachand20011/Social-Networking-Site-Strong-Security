


<script>
    // Create a new instance of the SpeechRecognition object
    const recognition = new window.webkitSpeechRecognition();

    recognition.lang = 'en-US';

   
    recognition.onresult = function(event) {
      const lastResultIndex = event.results.length - 1;
      const lastResult = event.results[lastResultIndex][0].transcript;

     
      const xhr = new XMLHttpRequest();
      xhr.open('POST', 'process_speech.php');
      xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
      xhr.send('speech=' + encodeURIComponent(lastResult));

     
      const outputDiv = document.getElementById('output');
      outputDiv.innerHTML = 'You said: ' + lastResult;
    }

    
    recognition.onerror = function(event) {
      console.error('Speech recognition error:', event.error);
    }

  
    function startListening() {
      recognition.start();
    }
  </script>















<!-- <script>

// Create a new instance of the SpeechRecognition object
const recognition = new window.webkitSpeechRecognition();

// Set the language to use for speech recognition
recognition.lang = 'en-US';

// Start speech recognition when the user speaks
function startListening() {
  recognition.start();
}

// Handle speech recognition results
recognition.onresult = function(event) {
  const lastResultIndex = event.results.length - 1;
  const lastResult = event.results[lastResultIndex][0].transcript;

  // Do something with the recognized speech
  console.log('Recognized speech:', lastResult);
}

// Handle errors that occur during speech recognition
recognition.onerror = function(event) {
  console.error('Speech recognition error:', event.error);
}
    </script> -->