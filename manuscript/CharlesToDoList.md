August 2, 2015

Charles - Immediate tasks:
	- update mu plots (stacked & unstacked)
	- how to delete the antigenic clustering-v46 ? or merge it to the main clustering?


Charles - NEXT:
  - computation support for Trevor in generating the figures  
  - sensitivity analysis  (need to wait until Tuesday morning)

		
Remaining tasks: 
A. Trevor generates the figures & finishes the text in the results section
	Analysis:
		- I will also assist in coding & providing the data that he needs
	Text
		- He can drop anything he no longer sees fit in the current version that I wrote
		- He will write up his interpretation using the figures that he is generating


B. Finish all other sections of the manuscript (do what I can)
	- Figure 2,3,4 needs to be regenerated
	- Regenerate Figure 5 & Figure S6(h3n2 kappa = 0.1, h1n1 kappa = 0.3) [WILL NEED TO REGENERATE]
	- re-read and revise the manuscript [done]
		- focus: finish up the things on the side first (anything except the result section that depends on Trevor) [ok]
		- make small edit [done]
	- note things on the tex document that Trevor needs to look at [done]
	- Prepare supplementary materials
		- organize the supplementary materials [done]
		- regenerate the  MCMC diagnostic figures, once the runs complete
	
C. Trevor will make a grand revision on the manuscript

D. File sharing (to github and Dropbox (or harddrive to harddrive))
	- scripts [done] 
		- from now on, every change to the script will be made on those folders [okay]
	- data  



E. Send to collaborators
		
F. Beast code [done]
	- resolve the messy current state of different versions [done]
	- upload beast code online and make sure it runs [done]



====================================================================================


  - made change to the manuscript [done]
  - organize the Supplementary materials [done]
  - compute some numbers 
  	- simulated data analysis  [done]
  	- update the Supplementary materials [done]
  	- update the stacked plot and Figure S6 [done]
  - copy the latest version of the scripts to the github folders  [done]
  
	- compute the mean antigenic location for seed strains [done]

  - resolve beast version differences [done]
  	- run H1N1 consensus trees [done]
	- beast [done]
		- resolve the messy current state of different versions [done]
		- upload beast code online and make sure it runs [done]

=========================================================================================
In more details for some of the tasks....

Task:
- run beast to get those evaluations: (take maybe a week)
	- more runs for simulation   [done]
	- more runs for MCMC diagnostics [running - will be completed by Tuesday morning]



0.2: set run for H1N1 at higher mds  [done]
	- look at clustering   [remind Trevor to look at it on Monday]
	- let him decide on the default MDS level

0b - Look at the manuscript, see what I have to change:
	- when h1n1 kappa = 0.3?
	- h3n2 kappa = 0.1


0c - Consensus clustering for the trees	[need to wait for the H1N1 strains from Trevor]  

0d - but what about the antigenic map? [done for h3n2, not done for h1n1]
	- also use consensus.. median [done, not done for h1n1]
	

1a. manuscript text
    - revise results section [done]
    - write proper description for each figure in the manuscript [did what I had to do so far]
	- note which figures I will need to regenerate [done]

1b. prepare supplementary materials   
	- redraw the MCMC schematic diagram figures [done]
	- see which figures I want to keep by looking at the texts [done]
	- add text for each supplementary figure that I decide to keep
	- note which figures I will need to regenerate when I see the new results, and find the scripts for it


3. locate my codes, run files, and scripts and results [done]


2. fill in the numbers from the manuscript [cancel - maybe no need]
	- note the list of numbers to compute
	- need to look at the scripts 
	- write codes to get those numbers I want



4. Text
	- fill in the reference
	- do a full manuscript revision to figure [done]
	
	
5. do any unfinished section, along with Trevor's input
	

6. BEAST code

	Current state: Messy because of the different versions I used to run things
	- I have an earlier version of code used for main analysis
	- since then I have a version I uploaded to github that has organized the codes
	- I also have a version used to simulate data
	- and a version (I think it is almost identical to the version used for analyzing simulated data)

	- try to recompile the versions in a separated folder
		- try to run the XML for each version
			- goal: make sure I can rerun the analysis with those xml files

	- try to see if these codes would run on BEAST 2.0 on github
	- upload codes onto BEAST github



	

	
==========================================
Then,
	
-revise text
-fill in references


=================================================================================

Computation & numbers:
- fill in the the numbers
- run beast to get those evaluations:
	- more runs for simulation
	- more runs for MCMC diagnostics
- Locate my codes and scripts and results

Coding:
- migrate code to BEAST 2.0 on github. I developed my code on 1.8. Do I need to?
- upload code to github
- upload run results somewhere


Prepare supplementary materials
redraw MCMC proposal figures in the Supplementary material
- add text to the supplementary figures
- supplementary material figure 1 -  fill in the text after looking at the python titerdb code to see how I generate the figure


text changes:
- general text revision
- question to think about: for H1N1, why do we not see clusters on straight line?


Others:
- need help in filling the correct reference & relating to Scientific importance
- trevor: explain the qualitative significance of the results





[done]- use Trevor's figures (and maybe suggest changes if necessary)
[done]- too many figures, need to move some to the Supplementary
[done] properly draw my schematic figures (those in the manuscript

[done]- "autoregressive" model .. figure out whether it is the wrong word to use.
		- to be safe, I use "antigenic additive mdoel" instead
[done]- word change:  Method: "k" sera to 'n_s" sera for consistency
