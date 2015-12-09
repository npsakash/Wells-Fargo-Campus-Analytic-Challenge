<!DOCTYPE html>
<html>
<head></head>
<body>
<div id="header">

<a href="http://www.cofc.edu"><img src="http://s8.postimg.org/thw7cx0xd/Cof_C_Logo.png" height="50" float="left" hspace="10px"></a>
<h2><a id="Wells-Fargo-Campus-Analytic-Challenge" class="anchor" href="Wells-Fargo-Campus-Analytic-Challenge" aria-hidden="true"><span class="octicon octicon-link"></span></a>Wells Fargo Campus Analytic Challenge</h2>
<a href="https://www.mindsumo.com/wells-fargo"><img src="https://d18qs7yq39787j.cloudfront.net/uploads/company/1036/wellsfargo.jpg" height="50" float="right" hspace="10px"></a>
</div>

<ul>
  <li><a class="active" href="#source-material">Source Material</a></li>
  <li><a href="#news">News</a></li>
  <li><a href="#contact">Contact</a></li>
  <li><a href="#about">About</a></li>
</ul>
      
<div id="section">
      <h3>
<a id="Source Material" class="anchor" href="#source-material" aria-hidden="true"><span class="octicon octicon-link"></span></a>Source Material</h3>
<ul>
<li><a href="https://www.mindsumo.com/contests/wells-fargo">Mindsumo Competition Page</a></li>
<li><a href="https://d18qs7yq39787j.cloudfront.net/uploads/contestfile/92/4aa8575b843c-2015+Wells+Fargo+Campus+Analytic+Challenge+Metadata.pdf">Metadata.pdf</a></li>
<li><a href="https://d18qs7yq39787j.cloudfront.net/uploads/contestfile/93/8af8575b213c-2015%2BWells%2BFargo%2BCampus%2BAnalytic%2BChallenge%2BDataset.txt">dataset.txt</a></li>
</ul>

<h2>
<a id="deliverables" class="anchor" href="#deliverables" aria-hidden="true"><span class="octicon octicon-link"></span></a>Deliverables</h2>

<p>
<b>Question #1: What financial topics* do consumers discuss on social media and what caused the consumers to post about this topic?</b> 
<br>
Deliverable A - Describe your Approach and Methodology. Include a visual representation of your analytic process flow.<br>
Deliverable B - Discuss the data and its relationship to social conversation drivers.<br>
Deliverable C - Document your code and reference the analytic process flow-diagram from deliverable A. 
<br>
<br>
<b>Question #2: Are the topics and “substance” consistent across the industry or are they isolated to individual banks? </b>
<br>
Deliverable D - Create a list of topics and substance you found<br> 
Deliverable E - Create a narrative of insights supported by the quantitative results (should include graphs or charts)
<br>
</p> 
<br>

<h2>
<a id="Results" class="anchor" href="#Results" aria-hidden="true"><span class="octicon octicon-link"></span></a>Results</h2>

<h3>
<a id="Introduction" class="anchor" href="#introduction" aria-hidden="true"><span class="octicon octicon-link"></span></a>Introduction</h3>

<p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;The internet has given rise to many innovations. A lot of the things that would have seemed impossible just five years ago, we take for granted today.  The greater accessibility through wireless technology and the miniaturization of portable devices has made staying connected just part of the day. The wealth of social media sites that allow people to share their experiences and opinions has also made nearly everyone easily accessible.  And there are probably few people who understand the implications of that better than marketers.  It is one thing to potentially have access to customers at all times, but being privy to their personal life is another thing entirely.  The proliferation of devices and software that allow users to generate content and seamlessly post it to their social media accounts has led to a veritable deluge of data around the net.  Every company around the globe that has a product to market, wants to leverage the ever-present, easily-accessible social media data. The Holy Grail in marketing the ability to consistently acquire insight of customer opinions or being able to spot trends in order to capitalize on new products and services. Nowhere is this truer than in the world of finance. Banking and finance are fundamentally speculative endeavors. Observing trends and paying attention to social cues helps bolster information acquired from traditional sources. Algorithms that are tuned to detect sentiment on sites like Facebook and Twitter have predicted temperament changes in customer base and subsequent spending habits. Using the provided dataset of social media posts our group was able to glean recently relevant financial topics, their root causes, and see which topics are across the industry or reserved for a particular bank.
</p>

<h3>
<a id="approach-and-methodology" class="anchor" href="#pproach-and-methodology
" aria-hidden="true"><span class="octicon octicon-link"></span></a>Approach and Methodology
</h3>

<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Our initial approach was to utilize the natural language processing and sentiment analysis packages available in RStudio to do most of the heavy-lifting when it came to sussing out meaningful observations. As our maiden voyage into the sea of sentiment analysis, we thought it may be easier to focus on customers with negative sentiment. Perusing the dataset provided by Wells Fargo, our first impression was that raw data is incredibly unwieldy.  Even given the human brain’s penchant for communication and our natural aptitude to read between the lines, as it were, there was not much “human” in the dataset. The tags that machines use to communicate make it almost impossible to gain any information from simply perusing.  It became apparent that we needed to clean the data up first.  We began by removing ASCII characters, white space, and modifiers in order to sift through the data. While the packages available have user-friendly tools packed in, we decided to utilize REGEX expressions. Not only is using REGEX statements faster, it allowed us to recover some of the data that was scrubbed accidentally while attempting to obscure personal and corporate information. After fixing as many cases as we could come up with, we moved on to data normalization and data cleansing. Data normalization makes sure that the data acquired from each source will be able to match with other sources. Data cleansing deals with issues such as typos to ensure completeness of input (e.g., for social data) and to ensure that the data is trustworthy. Determining quality for unstructured data is a science that is still evolving and can be time-consuming. By using the Text Mining package in R, we were able to accomplish this. Next we analyzed the data using a Sentiment Analysis to gauge the positive and negative posts posted on both Facebook and Twitter. This was then separated by each bank so that they could be compared to each other. We moved from a data frame and then changed the data into a document term matrix through a corpus to achieve the “clean” data in order to process it. Figure 1 diagrams our process.<img src="http://s20.postimg.org/lovqzrzjh/Figure_1.png" alt="Figure 1" align="right" height=350></p>

<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;The last stages of the pipeline is in charge of the sentiment and emotion analysis as well as a word frequency analysis. In order to quantitatively analyze qualitative things like emotion or sentiment, simple language rules, like inverters (e.g. not) are used in conjunction with  mathematical procedures, like using the average value of words found in a facebook post that have been previously assigned a quantitative value. The emotional quality of a post can be determined from bigrams and trigrams (the connection between doublets and triplets) and synonymous words (ala WordNet). This research led our team to the decision to use visual representations of our results as output from our code.  Unlike tables and lists, using visual representations like word-clouds and histograms allows for the data to be absorbed at a glance. The initial analysis of word frequency allowed us to determine some topics that are commonly found on social media regarding with regard to financial institutions.  In the data set provided, our initial analysis found approximately 160 words which were observed with a frequency greater than 2000 times.  After eliminating obviously useless entries, like the year, obscured data (e.g. twit_hndl), and meta-tags (e.g. https) we were left with a list of commonly used terms that we would use to generally verify our results.
</p>
<p style="text-align:center;"></p>

<h3>
<a id="the-dataset-and-its-relationship-to-social-conversation-drivers" class="anchor" href="#the-dataset-and-its-relationship-to-social-conversation-drivers" aria-hidden="true"><span class="octicon octicon-link"></span></a>The Dataset and Its Relationship to Social Conversation Drivers</h3>

<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Social conversation drivers is a term that generalizes the conversation of the population. Therefore, it made sense for our team to condense the data into something representing a similar generalization.  While considering only commonly used words sacrifices some precision, it allows for simplistic elimination of terms considered to be outliers. Additionally, the scope could later be broadened to include a greater number of entries from the supplied dataset. Upon finding words that were observed more than 2000 times (Figure 2), we were able to draw an initial conclusion that allowed our team to narrow the scope of our code.</p>
<img src="http://s20.postimg.org/68np5zi5p/Figure_2.png" alt="Figure 2" align="center" height=350>

<h3>
<a id="documented-code" class="anchor" href="#documented-code" aria-hidden="true"><span class="octicon octicon-link"></span></a> Documented Code</h3>
<p>The code generated by our team is far too large to include on one page. There is a link on the bottom, however, below are some of the more important or interesting code segments from our team code:
<img src="http://s20.postimg.org/u26yaxm0d/Assorted_Code.png" alt="Assorted Code" height=900>
</p>

<h3>
<a id="examples-of-topic-and-substance" class="anchor" href="#examples-of-topic-and-substance" aria-hidden="true"><span class="octicon octicon-link"></span></a> Examples of Topic and Substance</h3>

<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A variety of topics were discussed within the dataset. After running a word association function for the individual banks what resulted were terms relating to both finance and some that seemed specific to the individual banks. For instance the top four relationships, at 19 percent, associated with BankA were “affecting”, “begging”, “ecstatic”, and “occasions” without the document being stemmed. When the document had been stemmed the top financial terms for BankA were “check” at 6 percent and “account”, “bank”, and “money” at 5 percent. For BankB, with the document stemmed, we see that there is a relationship with the financial terms “money” at 11 percent, “pay” at 9 percent, and “check” at 5 percent. BankC’s top financial term associations are “rate” at 10 percent and “credit” at 7 percent. The terms for BankD were found to be “asset” and “grant” at 20 percent and “wealth” at 18 percent. We also found that the most associated words with each bank in order to see what popular topics were being discussed with each one. This was insightful as it helped us to compare popular topics with each bank.</p>
<p>When examining BankA in particular, we created three separate document-feature-matrices (DFM) for n-gram modeling. The code is also set up for the user to choose which of the four banks to analyze. The first matrix is unstemmed, and looks for 2 or 3 word terms that are separated by no more than one other word. The second matrix removes words found in “myStopWords” and looks for only two terms separated by no more than two other words. Finally, the third matrix is set up to determine sentiment and substance in the dataset. It is also stemmed and removes all words except the ones on our AFINN list of terms. This process more efficiently determines sentiment analysis by having every word in the DFM mapped to the AFINN list without having to process NULL returns.
Figure 2 shows some examples of topics discovered, the substance attribute, and corresponding tweet.
Example Close Account is from the first matrix is from the tweet “twit_hndl_BankB_help Name worst customer service..... i am ready to close account” delivers the topic of Poor Customer Service with a substance tag of Customer Attrition. Example Overdraft Fee was determined from the second matrix with the Facebook post “BankB just charged me an extended overdraft fee.... oh well im just gonna throw that in their face when i close my bank account tomorrow”. The post delivered the topic of Banking Fees or Penalties, with a substance tag of Customer Attrition as well. Examples Please Stop and Planned Parenthood were derived by the sentiment analysis in matrix three. The post from Please Stop is a reaction to a commercial aired by BankA supporting same-sex marriage, while Planned Parenthood is reactionary to BankA’s financial support of the organization following the release of discredited videos against the organization during the summer of 2015. Both posts highlight the topic of Socio-Political Affiliation by the user with again the substance tag of Customer Attrition or possible Boycott.</p>
<img src="http://s20.postimg.org/6mp15l299/Substance_Tags.png" alt="Figure 3" align="middle" height=900>

<h3>
<a id="graphical-insights" class="anchor" href="#graphical-insights" aria-hidden="true"><span class="octicon octicon-link"></span></a> Graphical Insights</h3>
<p><img src="http://s20.postimg.org/k65vbag8d/Social_Media_Mentions_Frequency_and_Sentiment_In.png" alt="Figure 4" align="right" width=450>Below is a collection of graphs and charts detailing insight gained from the sentiment analysis and n-gram modeling. Figure 4 shows the overall frequency and ratio of positive or negative sentiment across the four banks. From the dataset provided it appears BankC and BankD showed the highest frequency of sentiment terms used in tweets or posts. The largest ratio between positive and negative sentiment however occurs for BankA, with negative occurrences more than double those of positive. Favorable opinion was found to be most frequent with BankB and BankC, while BankD received an almost equal score.</p>
<p><img src="http://s20.postimg.org/5od9h1eb1/Comparing_Relative_Volume_and_Substance_of_Comme.png" alt="Figure 5" align="left"width=450>Figure 5 provides a more detailed picture of user sentiment across the four banks by scoring the intensity within the opinions found within the content, such as comparative or superlative modifiers. The scores range from -5.0 being the lowest set of adjectives to 5.0 being the highest. Though BankA may have had a greater amount of negative sentiment, this graph shows that the posts are lacking in the extreme cases of negative sentiment. So customers for BankA may just be reacting as expected to an unpleasant experience, and not necessarily displaying hatred for the institution but mere annoyance. The favorable BankB however shows the largest spread of extreme negative sentiment. These customers display a much higher unfavorable emotion against the bank when they feel wronged or betrayed. BankC shows a pretty balanced spread between the scores, while BankD may have customers who view the bank with more annoyance than contempt.</p>
<p>           	The following are word clouds compiled from our three n-gram models. These illustrate the relative volume and substance of comments within the dataset across the four banks. <img src="http://s20.postimg.org/jw2y5oqzx/Figure_6.png" alt="Figure 6" align="right"width=350>Figure 6 shows the frequency of bigrams and trigrams found. The largest and most prevalent being “bad customer service” in orange, followed by the second largest set of frequencies in red. This second set is primarily made up of bi-grams. The prevalence of “bad customer service” or “worst customer service” hints that the majority of people taking their time to post about a certain bank are reacting to an unpleasant experience and not merely bad-mouthing the bank without cause.</p> 

<p><img src="http://s20.postimg.org/sfmc3fzcd/Figure_7.png" alt="Figure 7" align="left"width=350>Figure 7 shows the unigrams displayed by our code. “Account” is fittingly the highest recorded single term, with a measurement of over 5000 occurrences. “Money”, “time”, “thank”, “don’t”, “help”, and “check” are the next highest frequency terms. This leads us to believe that when customers post or tweet about a certain bank there is a financial cause at its root, however terms such as “thank” or “time” would require a corresponding modifier to determine the meaning behind their use.</p>

<p><img src="http://s20.postimg.org/gf0w2prxp/Figure_8.png" alt="Figure 8" align="right"width=350>Our final world cloud in Figure 8 is a heat map of the bi-grams created. Financial terms are again the most prevalent, with posts ranging from “worst service” and “steal money” to “thank helping” and “please help”. Only an exterior level of meaning can be ascertained by these examples, however they show that customers are most likely to post about a certain bank when feeling either satisfied or unhappy with their experience, or if they are in need of the bank’s assistance.</p>
</div>
</body>
</html>
