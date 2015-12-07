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
<img src="http://s8.postimg.org/3uvsv1qt1/Figure_1.png" alt="Figure 1" align="middle" height=250>

<h2>
<a id="examples-of-topic-and-substance" class="anchor" href="#examples-of-topic-and-substance" aria-hidden="true"><span class="octicon octicon-link"></span></a> Examples of Topic and Substance</h2>

<p>A variety of topics were discussed within the dataset. After running a word association function for the individual banks what resulted were terms relating to both finance and some that seemed specific to the individual banks. For instance the top four relationships, at 19 percent, associated with BankA were “affecting”, “begging”, “ecstatic”, and “occasions” without the document being stemmed. When the document had been stemmed the top financial terms for BankA were “check” at 6 percent and “account”, “bank”, and “money” at 5 percent. For BankB, with the document stemmed, we see that there is a relationship with the financial terms “money” at 11 percent, “pay” at 9 percent, and “check” at 5 percent. BankC’s top financial term associations are “rate” at 10 percent and “credit” at 7 percent. The terms for BankD were found to be “asset” and “grant” at 20 percent and “wealth” at 18 percent. We also found that the most associated words with each bank in order to see what popular topics were being discussed with each one. This was insightful as it helped us to compare popular topics with each bank.</p>
<p>When examining BankA in particular, we created three separate document-feature-matrices (DFM) for n-gram modeling. The code is also set up for the user to choose which of the four banks to analyze. The first matrix is unstemmed, and looks for 2 or 3 word terms that are separated by no more than one other word. The second matrix removes words found in “myStopWords” and looks for only two terms separated by no more than two other words. Finally, the third matrix is set up to determine sentiment and substance in the dataset. It is also stemmed and removes all words except the ones on our AFINN list of terms. This process more efficiently determines sentiment analysis by having every word in the DFM mapped to the AFINN list without having to process NULL returns.
Figure 2 shows some examples of topics discovered, the substance attribute, and corresponding tweet.
Example Close Account is from the first matrix is from the tweet “twit_hndl_BankB_help Name worst customer service..... i am ready to close account” delivers the topic of Poor Customer Service with a substance tag of Customer Attrition. Example Overdraft Fee was determined from the second matrix with the Facebook post “BankB just charged me an extended overdraft fee.... oh well im just gonna throw that in their face when i close my bank account tomorrow”. The post delivered the topic of Banking Fees or Penalties, with a substance tag of Customer Attrition as well. Examples Please Stop and Planned Parenthood were derived by the sentiment analysis in matrix three. The post from Please Stop is a reaction to a commercial aired by BankA supporting same-sex marriage, while Planned Parenthood is reactionary to BankA’s financial support of the organization following the release of discredited videos against the organization during the summer of 2015. Both posts highlight the topic of Socio-Political Affiliation by the user with again the substance tag of Customer Attrition or possible Boycott.</p>
<img src="http://s3.postimg.org/euylgsacz/Substance_Tags.png" alt="Figure 1" align="middle" height=600>

      </section>
      <footer>
        <p>Project maintained by <a href="https://github.com/Anderson-Lab">Anderson-Lab</a></p>
        <p><small>Hosted on GitHub Pages &mdash; Theme by <a href="https://twitter.com/michigangraham">mattgraham</a></small></p>
      </footer>
    </div>
    <!--[if !IE]><script>fixScale(document);</script><![endif]-->
    
  </body>
</html>
