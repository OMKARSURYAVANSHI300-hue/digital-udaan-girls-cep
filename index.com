
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Digital Udaan | Empowering Girls</title>

<style>

/* ================= GENERAL ================= */

* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

html {
    scroll-behavior: smooth;
}

body {
    font-family: Arial, Helvetica, sans-serif;
    color: #263238;
    line-height: 1.6;
    background: white;
}


/* ================= NAVBAR ================= */

header {
    height: 72px;
    padding: 0 8%;
    display: flex;
    align-items: center;
    justify-content: space-between;
    background: white;
    position: sticky;
    top: 0;
    z-index: 1000;
    box-shadow: 0 2px 15px rgba(0,0,0,0.08);
}

.logo {
    font-size: 26px;
    font-weight: bold;
    color: #633c8f;
}

.logo span {
    color: #e889b7;
}

nav {
    display: flex;
    gap: 25px;
}

nav a {
    text-decoration: none;
    color: #333;
    font-size: 14px;
    font-weight: bold;
}

nav a:hover {
    color: #b14d82;
}

.menu-btn {
    display: none;
    border: none;
    background: none;
    font-size: 25px;
    cursor: pointer;
}


/* ================= HERO ================= */

.hero {
    min-height: 620px;
    padding: 80px 8%;
    display: flex;
    align-items: center;
    justify-content: space-between;
    gap: 50px;
    background: linear-gradient(135deg, #f9eff7, #fff8f3);
}

.hero-text {
    max-width: 680px;
}

.small-title {
    color: #d56d9c;
    font-size: 13px;
    letter-spacing: 2px;
    font-weight: bold;
    margin-bottom: 15px;
}

.hero h1 {
    font-size: 52px;
    line-height: 1.15;
    color: #4b2869;
    margin-bottom: 20px;
}

.hero h1 span {
    color: #d76b9d;
}

.hero p {
    font-size: 18px;
    color: #656565;
}

.buttons {
    margin-top: 30px;
    display: flex;
    gap: 15px;
}

.btn,
.btn-outline {
    padding: 13px 24px;
    border-radius: 8px;
    text-decoration: none;
    font-weight: bold;
}

.btn {
    background: #70449a;
    color: white;
}

.btn-outline {
    border: 2px solid #70449a;
    color: #70449a;
}

.hero-box {
    width: 330px;
    background: white;
    padding: 40px 30px;
    text-align: center;
    border-radius: 25px;
    box-shadow: 0 20px 50px rgba(91,49,100,0.15);
}

.laptop {
    width: 130px;
    height: 130px;
    margin: auto;
    margin-bottom: 20px;
    border-radius: 50%;
    display: grid;
    place-items: center;
    font-size: 55px;
    background: #f6e8f2;
}

.hero-box h2 {
    color: #55306f;
    margin-bottom: 10px;
}


/* ================= STATS ================= */

.stats {
    background: #633c8f;
    color: white;
    padding: 30px 8%;
    display: grid;
    grid-template-columns: repeat(4, 1fr);
    text-align: center;
}

.stats h2 {
    font-size: 28px;
}

.stats p {
    font-size: 13px;
}


/* ================= SECTION ================= */

.section {
    padding: 80px 8%;
}

.grey {
    background: #f7f8fa;
}

.section-heading {
    text-align: center;
    margin-bottom: 45px;
}

.section-heading p {
    color: #d36e9b;
    font-size: 13px;
    letter-spacing: 2px;
    font-weight: bold;
}

.section-heading h2 {
    color: #4d2c69;
    font-size: 36px;
    margin: 8px 0;
}

.section-heading span {
    color: #777;
}


/* ================= ABOUT ================= */

.about-container {
    display: grid;
    grid-template-columns: 1fr 1fr;
    gap: 50px;
    max-width: 1000px;
    margin: auto;
}

.about-text p {
    margin-bottom: 18px;
    color: #626262;
}

.about-card {
    padding: 30px;
    background: white;
    border-radius: 15px;
    box-shadow: 0 10px 35px rgba(0,0,0,0.08);
}

.about-card h3 {
    color: #633c8f;
    margin-bottom: 15px;
}

.about-card ul {
    list-style: none;
}

.about-card li {
    margin-bottom: 10px;
}


/* ================= COURSES ================= */

.course-container {
    display: grid;
    grid-template-columns: repeat(3, 1fr);
    gap: 22px;
}

.course-card {
    background: #fff;
    border: 1px solid #eee;
    padding: 28px;
    border-radius: 15px;
    transition: 0.3s;
}

.course-card:hover {
    transform: translateY(-6px);
    box-shadow: 0 15px 35px rgba(0,0,0,0.08);
}

.course-icon {
    font-size: 35px;
    margin-bottom: 10px;
}

.course-card h3 {
    color: #55306f;
    margin-bottom: 8px;
}

.course-card p {
    color: #707070;
    font-size: 14px;
    margin-bottom: 18px;
}

.course-card button {
    border: none;
    background: none;
    color: #d46799;
    font-weight: bold;
    cursor: pointer;
}


/* ================= OPPORTUNITIES ================= */

.opportunity-container {
    max-width: 1000px;
    margin: auto;
    display: grid;
    grid-template-columns: 1fr 1fr;
    gap: 20px;
}

.opportunity-card {
    display: flex;
    gap: 18px;
    padding: 25px;
    background: #fff;
    border-radius: 13px;
    border: 1px solid #eee;
}

.opportunity-card span {
    font-size: 35px;
}

.opportunity-card h3 {
    color: #55306f;
}

.opportunity-card p {
    color: #6d6d6d;
    font-size: 14px;
}


/* ================= SAFETY ================= */

.safety {
    padding: 70px 8%;
    background: #4d2866;
    color: white;
    display: grid;
    grid-template-columns: 1fr 1fr;
    gap: 50px;
    align-items: center;
}

.safety h2 {
    font-size: 36px;
    margin-bottom: 12px;
}

.safety p {
    color: #e8dce9;
}

.safety-list {
    display: grid;
    gap: 12px;
}

.safety-list div {
    background: rgba(255,255,255,0.1);
    padding: 14px;
    border-radius: 8px;
}


/* ================= RESOURCES ================= */

.resources {
    max-width: 850px;
    margin: auto;
    display: grid;
    gap: 12px;
}

.resources a {
    padding: 18px 22px;
    background: white;
    border-radius: 10px;
    text-decoration: none;
    color: #4d2866;
    font-weight: bold;
    display: flex;
    justify-content: space-between;
}

.resources span {
    color: #d46799;
}


/* ================= CONTACT ================= */

.contact {
    padding: 75px 8%;
    background: #f9eff7;
    display: grid;
    grid-template-columns: 1fr 1fr;
    gap: 60px;
    align-items: center;
}

.contact-text p:first-child {
    color: #d46799;
    font-size: 13px;
    letter-spacing: 2px;
    font-weight: bold;
}

.contact h2 {
    color: #4d2866;
    font-size: 38px;
    margin: 8px 0;
}

.contact form {
    display: grid;
    gap: 12px;
}

.contact input,
.contact textarea {
    padding: 14px;
    border: 1px solid #ddd;
    border-radius: 8px;
    font-family: inherit;
}

.contact textarea {
    min-height: 120px;
    resize: vertical;
}

.contact button {
    border: none;
    padding: 14px;
    border-radius: 8px;
    background: #70449a;
    color: white;
    font-weight: bold;
    cursor: pointer;
}


/* ================= FOOTER ================= */

footer {
    padding: 30px 8%;
    text-align: center;
    background: #2e193d;
    color: #ddd;
}

footer p {
    font-size: 13px;
    margin: 5px;
}


/* ================= TOAST ================= */

#toast {
    position: fixed;
    right: 25px;
    bottom: 25px;
    background: #4d2866;
    color: white;
    padding: 14px 20px;
    border-radius: 8px;
    opacity: 0;
    transform: translateY(20px);
    transition: 0.3s;
}

#toast.show {
    opacity: 1;
    transform: translateY(0);
}


/* ================= MOBILE ================= */

@media(max-width: 850px) {

    nav {
        display: none;
        position: absolute;
        top: 72px;
        left: 0;
        width: 100%;
        background: white;
        padding: 20px;
        flex-direction: column;
    }

    nav.active {
        display: flex;
    }

    .menu-btn {
        display: block;
    }

    .hero {
        flex-direction: column;
        text-align: center;
        padding: 60px 7%;
    }

    .hero h1 {
        font-size: 38px;
    }

    .buttons {
        justify-content: center;
        flex-wrap: wrap;
    }

    .stats {
        grid-template-columns: 1fr 1fr;
        gap: 20px;
    }

    .course-container,
    .about-container,
    .opportunity-container,
    .safety,
    .contact {
        grid-template-columns: 1fr;
    }

    .resources a {
        flex-direction: column;
        gap: 5px;
    }
}

</style>
</head>


<body>


<!-- ================= NAVIGATION ================= -->

<header>

<div class="logo">
Digital <span>Udaan</span>
</div>

<nav>

<a href="#home">Home</a>
<a href="#about">About</a>
<a href="#courses">Courses</a>
<a href="#opportunities">Opportunities</a>
<a href="#safety">Safety</a>
<a href="#contact">Contact</a>

</nav>

<button class="menu-btn" onclick="toggleMenu()">
☰
</button>

</header>


<!-- ================= HOME ================= -->

<section id="home" class="hero">

<div class="hero-text">

<p class="small-title">
DIGITAL EDUCATION FOR EVERY GIRL
</p>

<h1>
Bridging the
<span>Digital Divide</span>
in Urban Slum Communities
</h1>

<p>
Empowering girls from underserved communities
with digital education, technology skills,
career guidance and opportunities for a better future.
</p>

<div class="buttons">

<a href="#courses" class="btn">
Start Learning
</a>

<a href="#about" class="btn-outline">
Learn More
</a>

</div>

</div>


<div class="hero-box">

<div class="laptop">
💻
</div>

<h2>
Learn. Grow. Empower.
</h2>

<p>
Technology can create new opportunities
for every girl.
</p>

</div>

</section>


<!-- ================= STATS ================= -->

<section class="stats">

<div>
<h2>100%</h2>
<p>Free Learning</p>
</div>

<div>
<h2>10+</h2>
<p>Digital Skills</p>
</div>

<div>
<h2>24/7</h2>
<p>Learning Resources</p>
</div>

<div>
<h2>1 Goal</h2>
<p>Empower Girls</p>
</div>

</section>


<!-- ================= ABOUT ================= -->

<section id="about" class="section">

<div class="section-heading">

<p>ABOUT PROJECT</p>

<h2>
Why Digital Education Matters?
</h2>

</div>


<div class="about-container">

<div class="about-text">

<p>
Girls living in urban slum communities often
face limited access to computers, smartphones,
internet connectivity and digital education.
</p>

<p>
Digital Udaan is a community-focused platform
that aims to provide basic digital knowledge
and career awareness to girls.
</p>

<p>
The platform helps girls learn technology skills,
understand online safety and discover educational
and employment opportunities.
</p>

</div>


<div class="about-card">

<h3>Our Mission</h3>

<ul>

<li>✓ Provide digital education</li>
<li>✓ Improve computer literacy</li>
<li>✓ Promote online safety</li>
<li>✓ Provide career guidance</li>
<li>✓ Encourage digital independence</li>

</ul>

</div>

</div>

</section>


<!-- ================= COURSES ================= -->

<section id="courses" class="section grey">

<div class="section-heading">

<p>LEARNING ZONE</p>

<h2>Digital Skills for Girls</h2>

<span>
Learn practical skills that can help
in education and future careers.
</span>

</div>


<div class="course-container">


<div class="course-card">

<div class="course-icon">🖥️</div>

<h3>Computer Basics</h3>

<p>
Learn computer hardware, files,
folders, typing and basic computer operations.
</p>

<button onclick="learnMessage('Computer Basics')">
Learn More
</button>

</div>


<div class="course-card">

<div class="course-icon">🌐</div>

<h3>Internet Skills</h3>

<p>
Learn web browsing, email,
Google services and online applications.
</p>

<button onclick="learnMessage('Internet Skills')">
Learn More
</button>

</div>


<div class="course-card">

<div class="course-icon">📱</div>

<h3>Smartphone Skills</h3>

<p>
Learn how to use smartphones
for education and useful services.
</p>

<button onclick="learnMessage('Smartphone Skills')">
Learn More
</button>

</div>


<div class="course-card">

<div class="course-icon">💻</div>

<h3>Basic Coding</h3>

<p>
Start learning HTML, CSS,
JavaScript and programming concepts.
</p>

<button onclick="learnMessage('Basic Coding')">
Learn More
</button>

</div>


<div class="course-card">

<div class="course-icon">🔐</div>

<h3>Cyber Safety</h3>

<p>
Learn about passwords, OTP safety,
phishing and online privacy.
</p>

<button onclick="learnMessage('Cyber Safety')">
Learn More
</button>

</div>


<div class="course-card">

<div class="course-icon">📊</div>

<h3>MS Office</h3>

<p>
Learn Word, Excel and PowerPoint
for education and employment.
</p>

<button onclick="learnMessage('MS Office')">
Learn More
</button>

</div>

</div>

</section>


<!-- ================= OPPORTUNITIES ================= -->

<section id="opportunities" class="section">

<div class="section-heading">

<p>CAREER GUIDANCE</p>

<h2>Opportunities for a Better Future</h2>

</div>


<div class="opportunity-container">


<div class="opportunity-card">

<span>🎓</span>

<div>

<h3>Online Courses</h3>

<p>
Find free online courses and certifications
to improve your skills.
</p>

</div>

</div>


<div class="opportunity-card">

<span>💼</span>

<div>

<h3>Job Preparation</h3>

<p>
Learn resume writing, interview preparation
and workplace skills.
</p>

</div>

</div>


<div class="opportunity-card">

<span>🚀</span>

<div>

<h3>Entrepreneurship</h3>

<p>
Learn how digital technology can support
small businesses.
</p>

</div>

</div>


<div class="opportunity-card">

<span>🏆</span>

<div>

<h3>Scholarships</h3>

<p>
Explore educational opportunities
and scholarships.
</p>

</div>

</div>


</div>

</section>


<!-- ================= SAFETY ================= -->

<section id="safety" class="safety">

<div>

<p class="small-title">
STAY SAFE ONLINE
</p>

<h2>
Digital Safety is Your Right
</h2>

<p>
Learn how to protect your personal information
while using the internet.
</p>

</div>


<div class="safety-list">

<div>🔐 Use strong passwords</div>

<div>🚫 Never share OTP</div>

<div>📧 Identify fake emails</div>

<div>📱 Protect personal information</div>

<div>⚠️ Avoid suspicious links</div>

</div>

</section>


<!-- ================= RESOURCES ================= -->

<section class="section grey">

<div class="section-heading">

<p>USEFUL RESOURCES</p>

<h2>Learn & Explore</h2>

</div>


<div class="resources">

<a href="https://www.swayam.gov.in/" target="_blank">

🎓 SWAYAM

<span>Free Courses →</span>

</a>


<a href="https://www.ncs.gov.in/" target="_blank">

💼 National Career Service

<span>Find Jobs →</span>

</a>


<a href="https://www.skillindiadigital.gov.in/" target="_blank">

🛠 Skill India Digital

<span>Learn Skills →</span>

</a>


<a href="https://www.digilocker.gov.in/" target="_blank">

📄 DigiLocker

<span>Digital Documents →</span>

</a>

</div>

</section>


<!-- ================= CONTACT ================= -->

<section id="contact" class="contact">

<div class="contact-text">

<p>GET IN TOUCH</p>

<h2>Have a Question?</h2>

<p>
Contact our project team for more information
about digital learning programs.
</p>

</div>


<form onsubmit="submitForm(event)">

<input
type="text"
id="name"
placeholder="Enter Your Name"
required>

<input
type="email"
id="email"
placeholder="Enter Your Email"
required>

<textarea
id="message"
placeholder="Write your message"
required></textarea>

<button type="submit">
Send Message
</button>

</form>

</section>


<!-- ================= FOOTER ================= -->

<footer>

<div class="logo">
Digital <span>Udaan</span>
</div>

<p>
Bridging the Digital Divide |
Empowering Girls Through Technology
</p>

<p>
© 2026 Digital Udaan |
B.Sc. IT CEP Project
</p>

</footer>


<div id="toast"></div>


<!-- ================= JAVASCRIPT ================= -->

<script>

function toggleMenu() {

    const nav = document.querySelector("nav");

    nav.classList.toggle("active");

}


function learnMessage(course) {

    const toast = document.getElementById("toast");

    toast.innerHTML =
        "You selected <b>" +
        course +
        "</b>. Learning material will be available soon!";

    toast.classList.add("show");

    setTimeout(function() {

        toast.classList.remove("show");

    }, 3000);

}


function submitForm(event) {

    event.preventDefault();

    const name =
        document.getElementById("name").value;

    const toast =
        document.getElementById("toast");

    toast.innerHTML =
        "Thank you, <b>" +
        name +
        "</b>! Your message has been submitted.";

    toast.classList.add("show");

    document.querySelector("form").reset();

    setTimeout(function() {

        toast.classList.remove("show");

    }, 3000);

}


document.querySelectorAll("nav a").forEach(function(link) {

    link.addEventListener("click", function() {

        document.querySelector("nav")
        .classList.remove("active");

    });

});

</script>


</body>
</html>
