<!doctype html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="chrome=1">
    <title>Wells Fargo Campus Analytic Challenge</title>
    <link rel="stylesheet" href="stylesheets/styles.css">
    <link rel="stylesheet" href="stylesheets/github-dark.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
    <script src="javascripts/main.js"></script>
    <!--[if lt IE 9]>
      <script src="//html5shiv.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no">

  </head>
  <body>

      <header>
        <h1>Wells Fargo Campus Analytic Challenge</h1>
        <p>Paper and Results from Competition</p>
      </header>

      <div id="banner">
        <span id="logo"></span>

        <a href="http://npsakash.github.io/Wells-Fargo-Campus-Analytic-Challenge/" class="button fork"><strong>View On GitHub</strong></a>
        <div class="downloads">
          <span>Downloads:</span>
          <ul>
            <li><a href="https://github.com/npsakash/WellsFargoCompetition/zipball/master" class="button">ZIP</a></li>
            <li><a href="https://github.com/npsakash/WellsFargoCompetition/tarball/master" class="button">TAR</a></li>
          </ul>
        </div>
        </div><!-- end banner -->

    <div class="wrapper">
      <nav>
        <ul></ul>
      </nav>
      <section>
        
<a href="http://www.cofc.edu"><img src="http://s8.postimg.org/thw7cx0xd/Cof_C_Logo.png" height="50" align="left" hspace="10px"> </a>
<a href="https://www.mindsumo.com/wells-fargo"><img src="https://d18qs7yq39787j.cloudfront.net/uploads/company/1036/wellsfargo.jpg" height="50" align="right" hspace="10px"> </a>

<h1><a id="Wells-Fargo-Campus-Analytic-Challenge" class="anchor" href="Wells-Fargo-Campus-Analytic-Challenge" aria-hidden="true"><span class="octicon octicon-link"></span></a>Wells Fargo Campus Analytic Challenge</h1>

<h2>
<a id="Source Material" class="anchor" href="#source-material" aria-hidden="true"><span class="octicon octicon-link"></span></a>Source Material</h2>
<ul>
<li><a href="https://www.mindsumo.com/contests/wells-fargo">Mindsumo Competition Page</a></li>
<li><a href="https://d18qs7yq39787j.cloudfront.net/uploads/contestfile/92/4aa8575b843c-2015+Wells+Fargo+Campus+Analytic+Challenge+Metadata.pdf">Metadata.pdf</a></li>
<li><a href="https://d18qs7yq39787j.cloudfront.net/uploads/contestfile/93/8af8575b213c-2015%2BWells%2BFargo%2BCampus%2BAnalytic%2BChallenge%2BDataset.txt">dataset.txt</a></li>
</ul>

<h2>
<a id="Results" class="anchor" href="#Results" aria-hidden="true"><span class="octicon octicon-link"></span></a>Results</h2>

<h2>
<a id="Introduction" class="anchor" href="#introduction" aria-hidden="true"><span class="octicon octicon-link"></span></a>Introduction</h2>

<p align="justify">
The understanding of one’s customer base is an important aspect of any successful marketing strategy. The wealth of user generated content in the age of web 2.0 has companies across the globe eager to make sense of the data associated with it. This has led to an increased awareness of the power of social networks for expressing opinions about products and services.  In the financial field, social sensors can provide valuable information that complement other sources of information used in fundamental analysis.  In addition, recent research has shown that sentiment expressed on sites such as Facebook and Twitter can be applied to predict temperament changes in customer base. Using the dataset of content provided to us regarding four popular US banks from Facebook and Twitter users, our group was able to map out the most frequently used financial topics, their root causes, and see which topics are across the industry or reserved for a particular bank.
</p>

<h2>
<a id="approach-and-methodology" class="anchor" href="#pproach-and-methodology
" aria-hidden="true"><span class="octicon octicon-link"></span></a>Approach and Methodology
</h2>

<p>Our approach was to use natural language processing and sentiment analysis in R to find insight as to how customers viewed the institution in the content generated. In observing the provided dataset by Wells Fargo, we noticed that we first needed to clean the data by removing ASCII characters, white space, and modifiers in order to sift through the data using Natural Language Processing (NLP). The most important aspects of this step are data normalization and data cleansing. Data normalization makes sure that the data acquired from each source will be able to match with other sources. Data cleansing deals with issues such as typos to ensure completeness of input (e.g., for social data) and to ensure that the data is trustworthy. Determining quality for unstructured data is a science that is still evolving and can be time-consuming. By using the Text Mining package in R, we were able to accomplish this. Next we analyzed the data using a Sentiment Analysis to gauge the positive and negative posts posted on both Facebook and Twitter. This was then separated by each bank so that they could be compared to each other. We moved from a data frame and then changed the data into a document term matrix through a corpus to achieve the “clean” data in order to process it. </p>

<h2>
<a id="the-dataset-and-its-relationship-to-social-conversation-drivers" class="anchor" href="#the-dataset-and-its-relationship-to-social-conversation-drivers" aria-hidden="true"><span class="octicon octicon-link"></span></a>The Dataset and Its Relationship to Social Conversation Drivers</h2>

<p>When discussing “social conversation drivers,” it is understood that the term refers to a generalization of the population. Therefore, it makes sense to condense the data into something representing a similar generalization.  In the given data set, dataset.txt, there are approximately 160 words which are observed with a frequency greater than 2000 times.  Eliminating obviously useless entries like; the year, any variables introduced to obscure data (e.g. twit_hndl), and obvious meta-tags (e.g. dirmsg, dlvr, https, respname); we are left with a list of commonly used terms by users when creating internet posts about financial institutions. While only considering the most commonly used words reduces the scope to include substantially less posts and minimizes the overall field of view, it allows for elimination of words considered to be outliers and/or irrelevant words. Additionally, if an overwhelming supposition can be observed; the scope can be broadened to, generally, include a greater number of entries from the supplied data set. Listing the notable entries from the list of the most commonly used words and drawing some initial conclusion may lead to some insight about the data set. The words found in dataset.txt with a frequency greater than 2000 times are found in Figure 1.</p>
<img src="http://s8.postimg.org/3uvsv1qt1/Figure_1.png" style="float:center;height:200>

<h3>
<a id="contact-information" class="anchor" href="#contact-information" aria-hidden="true"><span class="octicon octicon-link"></span></a>Contact Information</h3>

<p>Professor: Dr. Paul Anderson
Office: 313 Harbor Walk East
Office Hours: My door is always open. Even if it isn't, please knock. I always love to hear from students. I have a little sign that I try to keep up in the window to show when I am in the office. Tuesday and Thursday from 2:00 - 3:30 PM are my official hours.
E-mail: <a href="mailto:andersonpe2@cofc.edu">andersonpe2@cofc.edu</a>
Office Phone: 953-8151
Facebook: <a href="mailto:andersonpe2@cofc.edu">andersonpe2@cofc.edu</a>
Facebook group: <a href="https://www.facebook.com/groups/1689269657959552/">https://www.facebook.com/groups/1689269657959552/</a></p>

<h3>
<a id="course-times" class="anchor" href="#course-times" aria-hidden="true"><span class="octicon octicon-link"></span></a>Course Times</h3>

<p>Section 01 - TR 09:55 am-11:10 am in HWEA 334</p>

<p>Section 02 - TR 03:35 pm-04:50 pm in HWEA 300</p>

<h3>
<a id="course-learning-outcomes" class="anchor" href="#course-learning-outcomes" aria-hidden="true"><span class="octicon octicon-link"></span></a>Course (learning) outcomes</h3>

<p>To gain an overview the field of knowledge discovery
To be able to distinguish and translate between data, information, and knowledge
To learn how to store, query, aggregate data in databases
To be able to distinguish problems based on computability
To learn how to implement distributed computing and storage
To apply algorithms for inductive and deductive reasoning
To learn introductory and state-of-the-art data mining algorithms
To apply data mining, statistical inference, and machine learning algorithms to a variety of datasets, including text, image, biological, and health
To apply information filtering on real world datasets
To apply information validation on real world datasets
To apply artificial intelligence concepts to real world datasets
To understand the social, ethical, and legal issues of informatics and data science</p>

<h3>
<a id="grading-policy" class="anchor" href="#grading-policy" aria-hidden="true"><span class="octicon octicon-link"></span></a>Grading Policy</h3>

<p>Midterm - 15%
Final Exam - 15%
Homework - 10%
Programming Assignments and Final Project - 60%
Grading Scale: A: 90-100; B: 80-89; C: 70-79; D: 65-69; F: &lt;65. Plusses and minuses will be used at the discretion of the instructor.</p>

<p>Grading Guidelines: Submitted work requires Analysis, Evaluation, and Creation of ideas, concepts, and materials into various deliverables (e.g., see revised Bloom's Taxonomy and reference below).</p>

<p>The grade of A is for work that involves high-quality achievement in all three Bloom areas.
The grade of B is for work that involves high-quality achievement in at least two Bloom areas, and medium-level achievement in the other.
The grade of C is for work that involves high-quality achievement in at least one Bloom area, and medium-level achievement in the others.
The grade of F is for work that does not meet above criteria.
Reference: Errol Thompson, Andrew Luxton-Reilly, Jacqueline L. Whalley, Minjie Hu, and Phil Robbins. 2008. Bloom's taxonomy for CS assessment. In Proceedings of the tenth conference on Australasian computing education - Volume 78 (ACE '08), Simon Hamilton and Margaret Hamilton (Eds.), Vol. 78. Australian Computer Society, Inc., Darlinghurst, Australia, Australia, 155-161.</p>

<h3>
<a id="homework-policy" class="anchor" href="#homework-policy" aria-hidden="true"><span class="octicon octicon-link"></span></a>Homework Policy</h3>

<p>Written homework will placed under my office door by 5 PM on the due date. No late homework will be accepted. Cheating/sharing will result in a zero on the assignment and a report to the judicial board.</p>

<h3>
<a id="programming-assignments" class="anchor" href="#programming-assignments" aria-hidden="true"><span class="octicon octicon-link"></span></a>Programming Assignments</h3>

<p>Programming assignments will be submitted through the Learn2Mine environment. There will be a combination of in-class lab assignments, and out of programming assignments.</p>

<h3>
<a id="honor-code" class="anchor" href="#honor-code" aria-hidden="true"><span class="octicon octicon-link"></span></a>Honor Code</h3>

<p>You must do your work alone (or with your teammates, for group assignments).
You must identify your sources of material and inspiration. It is a violation of the honor code to present someone else's work or ideas as your own.
In any course deliverable, you must always identify the person(s) that helped you (directly or indirectly), if any, and explain their contribution to your work.
Also see the College of Charleston Student Handbook, especially sections on The Honor Code (p. 11), and Student Code of Conduct (p. 12). There is other useful information there.
Classroom Policies</p>

<p>You are expected to take good notes during class.
You are expected to participate in class with questions and invited discussion.
You are expected to attend all classes. The grade 'WA' will be given for excessive (&gt;= 3) absences. If you miss class, you must get an absence memo from the Associate Dean of Students Office; also, you are responsible for announcements made in class, assignment due dates, etc.
You should turn off all electronic devices (e.g., cell phones, pagers, etc.).
In summary, you should contribute positively to the classroom learning experience, and respect your classmates right to learn (see College of Charleston Student Handbook, section on Classroom Code of Conduct (p. 58)).
Late Policy</p>

<p>No late days will be allowed without an excuse. Falling behind on assignments will make it difficult to achieve the learning outcomes of this course.</p>

<h3>
<a id="facebook-group" class="anchor" href="#facebook-group" aria-hidden="true"><span class="octicon octicon-link"></span></a>Facebook Group</h3>

<p>You are required to join the Facebook Group. The majority of class related discussions will be carried out in this forum.</p>

<p><a href="https://www.facebook.com/groups/1689269657959552/">Join the Facebook group here</a></p>

<h2>
<a id="midterm" class="anchor" href="#midterm" aria-hidden="true"><span class="octicon octicon-link"></span></a>Midterm</h2>

<p>The is scheduled for Tuesday, October 27th</p>

<h2>
<a id="final" class="anchor" href="#final" aria-hidden="true"><span class="octicon octicon-link"></span></a>Final</h2>

<p>The final exam will be take home.</p>

<p>The final exam time will be used for final project presentations.</p>

<p>Section 01 - Saturday, December 12th from 8 - 11 AM</p>

<p>Section 02 - Thursday, December 10th from 4 - 7 PM</p>

<h1>
<a id="anderson-data-science-research-lab" class="anchor" href="#anderson-data-science-research-lab" aria-hidden="true"><span class="octicon octicon-link"></span></a><a href="http://anderson-lab.github.io/">Anderson Data Science Research Lab</a>
</h1>

<p align="justify">
<a href="http://anderson-lab.github.io/"><img src="http://freyja.cs.cofc.edu/Paul-labs-logo.png" alt="Data Science Research Lab" height="100" align="right" hspace="10px"></a>
The Anderson Data Science Research Lab specializes in applying data mining, machine learning, and artificial intelligence to the fields of bioinformatics, genomics, and metabolomics. We develop algorithms and software to tackle some of the most challenging and interesting data intensive problems in the life sciences. Our research interests include data science, big data, pattern analysis in high-dimensionality data sets, evolutionary computation and optimization, machine learning, computational genomics, cloud computing, computational metabolomics, and eScience. We currently have multidisciplinary projects underway in metabolomics, human cognition, toxicology, marine biology, medical genomics, biomedical informatics, and marine genomics.
</p>
      </section>
      <footer>
        <p>Project maintained by <a href="https://github.com/Anderson-Lab">Anderson-Lab</a></p>
        <p><small>Hosted on GitHub Pages &mdash; Theme by <a href="https://twitter.com/michigangraham">mattgraham</a></small></p>
      </footer>
    </div>
    <!--[if !IE]><script>fixScale(document);</script><![endif]-->
    
  </body>
</html>
