=== Codes and Data used in the Antigenic-Clustering manuscript ===


! WANT: UPLOAD TO DROBOX FOR SHARING with Trevor: /Users/charles/Dropbox/antigenic-clustering
	From /Users/charles/Documents/researchData/clustering
	- forManuscript: 32GB (but H1N1, H3N2, and simulation subfolders total: 2.28GB + 15.98GB + 11.51GB)
	- forManuscripts-moreReplicates: 13.31GB and counting
	- simulations: 443mb

Condensed version:
	Manuscript: /Users/charles/Documents/research/antigenic/GenoPheno/antigenic-clustering
	Main development folder: /Users/charles/Documents/research/antigenic/GenoPheno/driver/clustering
	MCMC outputs, simulated data: 
		/Users/charles/Documents/researchData/clustering

Main analysis:

 Code:
 	main analysis: (v43):
 		java src & jar file:	/Users/charles/Documents/researchData/clustering/codeUsedForManuscript/v_43_mainAnalysis
	
 	 
 XML:
 	main analysis:
	 	H1N1: /Users/charles/Documents/research/antigenic/GenoPheno/driver/clustering/xml/H1N1/gizmo/v43
 		H3N2: /Users/charles/Documents/research/antigenic/GenoPheno/driver/clustering/xml/H3N2/gizmo/v43
 	
 	
 Data: 
	local: /Users/charles/Documents/research/antigenic/GenoPheno/driver/clustering/data
 	manuscript that includes the subset of the data: /Users/charles/Documents/research/antigenic/GenoPheno/antigenic-clustering/data
! 	gizmo version: [need to copy back to local disk when the whole research is done]
 
 Scripts: 
 	Generally, they are in this folder: /Users/charles/Documents/research/antigenic/GenoPheno/driver/clustering/scripts
 
 Commands used in Gizmo:
	H1N1
		kappa=0.3(default):	sbatch --time=15-0 --wrap="java -jar /home/ycheung/clustering/beast_mcmc_trunk_v43/build/dist/beast.jar /home/ycheung/clustering/xml/H1N1/v43/H1N1-v0_43-C3b-mds0_3.xml"
		kappa=0.1:			sbatch --time=15-0 --wrap="java -jar /home/ycheung/clustering/beast_mcmc_trunk_v43/build/dist/beast.jar /home/ycheung/clustering/xml/H1N1/v43/H1N1-v0_43-C3b-mds0_1.xml"
		kappa=0.4:			sbatch --time=15-0 --wrap="java -jar /home/ycheung/clustering/beast_mcmc_trunk_v43/build/dist/beast.jar /home/ycheung/clustering/xml/H1N1/v43/H1N1-v0_43-C3b-mds0_4.xml"
		kappa=0.5:			sbatch --time=15-0 --wrap="java -jar /home/ycheung/clustering/beast_mcmc_trunk_v43/build/dist/beast.jar /home/ycheung/clustering/xml/H1N1/v43/H1N1-v0_43-C3b-mds0_5.xml"
		kappa=0.6:			sbatch --time=15-0 --wrap="java -jar /home/ycheung/clustering/beast_mcmc_trunk_v43/build/dist/beast.jar /home/ycheung/clustering/xml/H1N1/v43/H1N1-v0_43-C3b-mds0_6.xml"
		kappa=0.7:			sbatch --time=15-0 --wrap="java -jar /home/ycheung/clustering/beast_mcmc_trunk_v43/build/dist/beast.jar /home/ycheung/clustering/xml/H1N1/v43/H1N1-v0_43-C3b-mds0_7.xml"
		kappa=0.8:			sbatch --time=15-0 --wrap="java -jar /home/ycheung/clustering/beast_mcmc_trunk_v43/build/dist/beast.jar /home/ycheung/clustering/xml/H1N1/v43/H1N1-v0_43-C3b-mds0_8.xml"


	H3N2
		kappa=0.1 (default): 	sbatch --time=15-0 --wrap="java -jar /home/ycheung/clustering/beast_mcmc_trunk_v43/build/dist/beast.jar /home/ycheung/clustering/xml/H3N2/v43/H3N2_v0_43-C3b-mds0_1.xml"
		kappa=0.05:				sbatch --time=15-0 --wrap="java -jar /home/ycheung/clustering/beast_mcmc_trunk_v43/build/dist/beast.jar /home/ycheung/clustering/xml/H3N2/v43/H3N2_v0_43-C3b-mds0_05.xml"
		kappa=0.15:				sbatch --time=15-0 --wrap="java -jar /home/ycheung/clustering/beast_mcmc_trunk_v43/build/dist/beast.jar /home/ycheung/clustering/xml/H3N2/v43/H3N2_v0_43-C3b-mds0_15.xml"


 MCMC Outputs:
 	Replicate 1-x:	
	Replicate (x+1)-10 (for both H3N2 and H1N1):	/Users/charles/Documents/researchData/clustering/forManuscripts-moreReplicates
	H1N1 kappa=0.4 to 0.8:	/Users/charles/Documents/researchData/clustering/forManuscripts-moreReplicates



 Figure stackedMuPlot (#5):
 	- script: /Users/charles/Documents/research/antigenic/GenoPheno/driver/clustering/scripts/stacked-muplot.R
	- figure: weird, I didn't save it out directly. 
!		- I can only find the finished product here: /Users/charles/Documents/research/antigenic/GenoPheno/antigenic-clustering/manuscript/figures/custom/stackedMuPlot.pdf

 Figure mu parameter plots (Supp):
 	- H3N2 script: /Users/charles/Documents/research/antigenic/GenoPheno/driver/clustering/scripts/H3N2-investigateExcisionPointsNewParametrization-2-12-2015.R
	- H1N1 script: /Users/charles/Documents/research/antigenic/GenoPheno/driver/clustering/scripts/H1N1-investigateExcisionPointsNewParametrization-2-12-2015.R
	- figure:

 Figure Consensus tree:
 	- scripts:	/Users/charles/Documents/research/antigenic/GenoPheno/driver/clustering/scripts/pythonScripts_2_7/treeConsensus.py
 	- H3N2 output trees for Trevor to use: /Users/charles/Documents/research/antigenic/GenoPheno/driver/clustering/analysisManuscript7-31-2015/H3N2/consenus
 
 Figure Antigenic Map:
! 	- from data:
 
 Statistic and Figures for MCMC Diagnostics:
 	 - /Users/charles/Documents/research/antigenic/GenoPheno/driver/clustering/scripts/GelmanRubinStatistics-July29-2015.R

 Figure Heatmap for both H1N1 and H3N2 (#1):
 	- script #1: To get the heatmap, you have to first get the adjacency matrix by using a java program from the beast code:  mergeAdjacencyMatrixPlots.java
		-    (pretty much, countCLusterCooccurnece was an older version of that script, without accounting for NUM_BURNINS. - so I can just ignore that script from now on)
	- script #2: To get the heatmap, run:  /Users/charles/Documents/research/antigenic/GenoPheno/driver/clustering/scripts/H1N1-heatmapAdjacencyMatrix-forManuscript-1-19-2015.R
!	- script #3: I forgot how I get the virus names in sorted version. I think I asked for Trevor's help.
	- data to generate heatmap:
			- generated adjacency matrix files: (see script #2): eg. /Users/charles/Documents/research/antigenic/GenoPheno/driver/clustering/analysis/analysisManuscript-1-19-2015/H1N1/H1N1-C3b-mds0_1-adjacencyMatrix.txt
			- Virus names in sorted order to sort the heatmap
			    -H3N2 /Users/charles/Documents/research/antigenic/GenoPheno/driver/clustering/analysisManuscript2-12-2015/H3N2-virusNames.ordered.txt
			    	/Users/charles/Documents/research/antigenic/GenoPheno/driver/clustering/analysisManuscript2-12-2015/H3N2-NewickTree-orderedIncreasing.trees
			    -H1N1 /Users/charles/Documents/research/antigenic/GenoPheno/driver/clustering/analysisManuscript2-12-2015/H1N1-virusNames.ordered.txt
			    	/Users/charles/Documents/research/antigenic/GenoPheno/driver/clustering/analysisManuscript2-12-2015/H1N1-NewickTree-orderedIncreasing.trees
	- figures: 	
		- previously: /Users/charles/Documents/research/antigenic/GenoPheno/driver/clustering/analysisManuscript2-12-2015
		- now, the add ons are in: /Users/charles/Documents/research/antigenic/GenoPheno/driver/clustering/analysisManuscript7-31-2015
	- data: script #2 generated some outputs for Trevor to draw better figures:
		- /Users/charles/Documents/research/antigenic/GenoPheno/driver/clustering/analysisManuscript2-12-2015
			- Note: the heatmap figures that I drew are also there:
			- H1N1 /Users/charles/Documents/research/antigenic/GenoPheno/driver/clustering/analysisManuscript2-12-2015/H1N1/adjacencyMatrices
			- H3N2 /Users/charles/Documents/research/antigenic/GenoPheno/driver/clustering/analysisManuscript2-12-2015/H3N2/adjacencyMatrices
		- and /Users/charles/Documents/research/antigenic/GenoPheno/driver/clustering/analysisManuscript7-31-2015
			- Note: the heatmap figures that I drew are also there:
			- H1N1 (kappa=0.4-0.8): /Users/charles/Documents/research/antigenic/GenoPheno/driver/clustering/analysisManuscript7-31-2015/H1N1/adjacencyMatrices
		- I copied these data to the shared dropbox under the same hierarchy:
			-dropbox: /Users/charles/Dropbox/antigenic-clustering/analysisManuscript7-31-2015
			-dropbox: /Users/charles/Dropbox/antigenic-clustering/analysisManuscript2-12-2015
		- Trevor uses these data and his script to draw better looking heatmaps
		


 Figure MCMC schematic diagrams (#1, #6):
 	- keynote drawing: /Users/charles/Documents/research/antigenic/GenoPheno/antigenic-clustering/manuscript/figures/lineart
 
 
 Summarized (thinned) MCMC outputs to upload to github as examples:
! 	- script:
! 	- results: (in github) and ?
 		
 
 
Simulations:

 Code to run MCMC: [NEED TO RECONSTRUCT]: See Tracing code changes over time from Onenote Clustering notebook
! 	Script to simulate: 	
 Jar file (v46): /Users/charles/Documents/research/antigenic/GenoPheno/driver/clustering/software/beast_v0_46-simulateViruses.jar

 XML: 
 	To make the XML for simulating data:
 		/Users/charles/Documents/research/antigenic/GenoPheno/driver/clustering/scripts/pythonScripts_2_7/H3N2_makeXMLforGizmo_analyzeSimData.py
 		/Users/charles/Documents/research/antigenic/GenoPheno/driver/clustering/scripts/pythonScripts_2_7/H3N2_createXMLforSimulation-2-18-2015.py
 	To make different completion rate by thinning HI data: 
 		- /Users/charles/Documents/research/antigenic/GenoPheno/driver/clustering/scripts/pythonScripts_2_7/H3N2_thinHI_data-2-18-2015.py
 	To simulate data:
		/Users/charles/Documents/research/antigenic/GenoPheno/driver/clustering/simulationsAnalysis/xml/simulation
	To analyze the simulated data:
		/Users/charles/Documents/research/antigenic/GenoPheno/driver/clustering/simulationsAnalysis/xml/analysisGizmo
 Simulated Data: 
 	- /Users/charles/Documents/researchData/clustering/forManuscript/simulation

 Commands used in Gizmo:
 	- note: each replicate required a different command because they run on different simulated data.
 	- see Commands #1
 	
 MCMC outputs: 
 	replicate 1-5: /Users/charles/Documents/researchData/clustering/forManuscript/simulation
 	replicate 6-10: /Users/charles/Documents/researchData/clustering/forManuscripts-moreReplicates/simulations
 
 Figure ROC (#7):
 	- script: /Users/charles/Documents/research/antigenic/GenoPheno/driver/clustering/scripts/simulationAnalysis-7-30-2015-v4.R
 				- obsolete: /Users/charles/Documents/research/antigenic/GenoPheno/driver/clustering/scripts/simulationAnalysis-2-20-2015-v3.R		  
	- figure: /Users/charles/Documents/research/antigenic/GenoPheno/driver/clustering/simulationsAnalysis/analysis/avgTrueVsFalsePositives-completionRate-10replicates.pdf
		copied to: /Users/charles/Documents/research/antigenic/GenoPheno/antigenic-clustering/manuscript/figures/custom/avgTrueVsFalsePositives-completionRate-10replicates.pdf






MCMC proposal schematic diagrams: /Users/charles/Documents/research/antigenic/GenoPheno/antigenic-clustering/manuscript/figures/lineart/
	Figure flipAndBalance: /Users/charles/Documents/research/antigenic/GenoPheno/antigenic-clustering/manuscript/figures/lineart/flipAndBalance.key
	Figure swapAndFlipNeighbor: /Users/charles/Documents/research/antigenic/GenoPheno/antigenic-clustering/manuscript/figures/lineart/swapAndFlipNeighbor.key
	Figure swapIandMuNeighbor: /Users/charles/Documents/research/antigenic/GenoPheno/antigenic-clustering/manuscript/figures/lineart/swapIandMuNeighbor.key
	Figure walkAndBalance: /Users/charles/Documents/research/antigenic/GenoPheno/antigenic-clustering/manuscript/figures/lineart/walkAndBalance.key



---------------------------------------------------------------------------------------------------------------

Potentially interesting script:
		/Users/charles/Documents/research/antigenic/GenoPheno/driver/clustering/scripts/get_p_on_and_evaluateMCMCConvergence-forManuscript-2-12-2015.R

potentially interesting results:
	/Users/charles/Documents/research/antigenic/GenoPheno/driver/clustering/analysisManuscript2-12-2015/H3N2/tree/H3N2_C3b-mds0_05-maxPosterior-p_on-integerScaledBy100.trees

Probably obsolete:
 /Users/charles/Documents/research/antigenic/GenoPheno/driver/clustering/analysis
 /Users/charles/Documents/research/antigenic/GenoPheno/driver/clustering/analysisManuscript1-21-2015
 /Users/charles/Documents/research/antigenic/GenoPheno/driver/clustering/code    {up to 1-11-2015}

 /Users/charles/Documents/research/antigenic/GenoPheno/driver/writeup/genoPheno.md

Analysis and Results:
Figure 1: covered
Figure 2: covered + Trevor's?
Figure 3: 
Figure 4:
Figure 5: covered
Figure 6: covered
Figure 7: covered


Figure S1:
!  is it this one? /Users/charles/Documents/research/antigenic/GenoPheno/driver/clustering/scripts/pythonScripts_2_7/titerAnalytic.py


Figure S2:


----------------------------------------------------------------------------------------------------------------------------

Commands #1:
	From Tree 51
	After simulation, I used these to run the main results:
sbatch --time=10-0 --wrap="java -jar ~/clustering/software/beast_v0_46-simulateViruses.jar /home/ycheung/clustering/simulation/xml/analysisGizmo/H3N2-analyze_v0_46_completion0.5_rep1.xml"
sbatch --time=10-0 --wrap="java -jar ~/clustering/software/beast_v0_46-simulateViruses.jar /home/ycheung/clustering/simulation/xml/analysisGizmo/H3N2-analyze_v0_46_completion0.2_rep1.xml"
sbatch --time=10-0 --wrap="java -jar ~/clustering/software/beast_v0_46-simulateViruses.jar /home/ycheung/clustering/simulation/xml/analysisGizmo/H3N2-analyze_v0_46_completion0.1_rep1.xml"
sbatch --time=10-0 --wrap="java -jar ~/clustering/software/beast_v0_46-simulateViruses.jar /home/ycheung/clustering/simulation/xml/analysisGizmo/H3N2-analyze_v0_46_completion0.05_rep1.xml"
##########
sbatch --time=10-0 --wrap="java -jar ~/clustering/software/beast_v0_46-simulateViruses.jar /home/ycheung/clustering/simulation/xml/analysisGizmo/H3N2-analyze_v0_46_completion0.5_rep2.xml"
sbatch --time=10-0 --wrap="java -jar ~/clustering/software/beast_v0_46-simulateViruses.jar /home/ycheung/clustering/simulation/xml/analysisGizmo/H3N2-analyze_v0_46_completion0.2_rep2.xml"
sbatch --time=10-0 --wrap="java -jar ~/clustering/software/beast_v0_46-simulateViruses.jar /home/ycheung/clustering/simulation/xml/analysisGizmo/H3N2-analyze_v0_46_completion0.1_rep2.xml"
sbatch --time=10-0 --wrap="java -jar ~/clustering/software/beast_v0_46-simulateViruses.jar /home/ycheung/clustering/simulation/xml/analysisGizmo/H3N2-analyze_v0_46_completion0.05_rep2.xml"
#############
sbatch --time=10-0 --wrap="java -jar ~/clustering/software/beast_v0_46-simulateViruses.jar /home/ycheung/clustering/simulation/xml/analysisGizmo/H3N2-analyze_v0_46_completion0.5_rep3.xml"
sbatch --time=10-0 --wrap="java -jar ~/clustering/software/beast_v0_46-simulateViruses.jar /home/ycheung/clustering/simulation/xml/analysisGizmo/H3N2-analyze_v0_46_completion0.2_rep3.xml"
sbatch --time=10-0 --wrap="java -jar ~/clustering/software/beast_v0_46-simulateViruses.jar /home/ycheung/clustering/simulation/xml/analysisGizmo/H3N2-analyze_v0_46_completion0.1_rep3.xml"
sbatch --time=10-0 --wrap="java -jar ~/clustering/software/beast_v0_46-simulateViruses.jar /home/ycheung/clustering/simulation/xml/analysisGizmo/H3N2-analyze_v0_46_completion0.05_rep3.xml"
###############
sbatch --time=10-0 --wrap="java -jar ~/clustering/software/beast_v0_46-simulateViruses.jar /home/ycheung/clustering/simulation/xml/analysisGizmo/H3N2-analyze_v0_46_completion0.5_rep4.xml"
sbatch --time=10-0 --wrap="java -jar ~/clustering/software/beast_v0_46-simulateViruses.jar /home/ycheung/clustering/simulation/xml/analysisGizmo/H3N2-analyze_v0_46_completion0.2_rep4.xml"
sbatch --time=10-0 --wrap="java -jar ~/clustering/software/beast_v0_46-simulateViruses.jar /home/ycheung/clustering/simulation/xml/analysisGizmo/H3N2-analyze_v0_46_completion0.1_rep4.xml"
sbatch --time=10-0 --wrap="java -jar ~/clustering/software/beast_v0_46-simulateViruses.jar /home/ycheung/clustering/simulation/xml/analysisGizmo/H3N2-analyze_v0_46_completion0.05_rep4.xml"
###############
sbatch --time=10-0 --wrap="java -jar ~/clustering/software/beast_v0_46-simulateViruses.jar /home/ycheung/clustering/simulation/xml/analysisGizmo/H3N2-analyze_v0_46_completion0.5_rep5.xml"
sbatch --time=10-0 --wrap="java -jar ~/clustering/software/beast_v0_46-simulateViruses.jar /home/ycheung/clustering/simulation/xml/analysisGizmo/H3N2-analyze_v0_46_completion0.2_rep5.xml"
sbatch --time=10-0 --wrap="java -jar ~/clustering/software/beast_v0_46-simulateViruses.jar /home/ycheung/clustering/simulation/xml/analysisGizmo/H3N2-analyze_v0_46_completion0.1_rep5.xml"
sbatch --time=10-0 --wrap="java -jar ~/clustering/software/beast_v0_46-simulateViruses.jar /home/ycheung/clustering/simulation/xml/analysisGizmo/H3N2-analyze_v0_46_completion0.05_rep5.xml"
#for the mds = 0 .3 runs:
sbatch --time=10-0 --wrap="java -jar ~/clustering/software/beast_v0_46-simulateViruses.jar /home/ycheung/clustering/simulation/xml/analysisGizmo/H3N2-analyze_v0_46_completion0.05-mds0_3_rep1.xml"
sbatch --time=10-0 --wrap="java -jar ~/clustering/software/beast_v0_46-simulateViruses.jar /home/ycheung/clustering/simulation/xml/analysisGizmo/H3N2-analyze_v0_46_completion0.05-mds0_3_rep2.xml"
sbatch --time=10-0 --wrap="java -jar ~/clustering/software/beast_v0_46-simulateViruses.jar /home/ycheung/clustering/simulation/xml/analysisGizmo/H3N2-analyze_v0_46_completion0.05-mds0_3_rep3.xml"
sbatch --time=10-0 --wrap="java -jar ~/clustering/software/beast_v0_46-simulateViruses.jar /home/ycheung/clustering/simulation/xml/analysisGizmo/H3N2-analyze_v0_46_completion0.05-mds0_3_rep4.xml"
sbatch --time=10-0 --wrap="java -jar ~/clustering/software/beast_v0_46-simulateViruses.jar /home/ycheung/clustering/simulation/xml/analysisGizmo/H3N2-analyze_v0_46_completion0.05-mds0_3_rep5.xml"
sbatch --time=10-0 --wrap="java -jar ~/clustering/software/beast_v0_46-simulateViruses.jar /home/ycheung/clustering/simulation/xml/analysisGizmo/H3N2-analyze_v0_46_completion0.5-mds0_3_rep1.xml"
sbatch --time=10-0 --wrap="java -jar ~/clustering/software/beast_v0_46-simulateViruses.jar /home/ycheung/clustering/simulation/xml/analysisGizmo/H3N2-analyze_v0_46_completion0.5-mds0_3_rep2.xml"
sbatch --time=10-0 --wrap="java -jar ~/clustering/software/beast_v0_46-simulateViruses.jar /home/ycheung/clustering/simulation/xml/analysisGizmo/H3N2-analyze_v0_46_completion0.5-mds0_3_rep3.xml"
sbatch --time=10-0 --wrap="java -jar ~/clustering/software/beast_v0_46-simulateViruses.jar /home/ycheung/clustering/simulation/xml/analysisGizmo/H3N2-analyze_v0_46_completion0.5-mds0_3_rep4.xml"
sbatch --time=10-0 --wrap="java -jar ~/clustering/software/beast_v0_46-simulateViruses.jar /home/ycheung/clustering/simulation/xml/analysisGizmo/H3N2-analyze_v0_46_completion0.5-mds0_3_rep5.xml"

Then, more replicates:
sbatch --time=10-0 --wrap="java -jar ~/clustering/software/beast_v0_46-simulateViruses.jar /home/ycheung/clustering/simulation/xml/analysisGizmo/H3N2-analyze_v0_46_completion0.5_rep6.xml"
sbatch --time=10-0 --wrap="java -jar ~/clustering/software/beast_v0_46-simulateViruses.jar /home/ycheung/clustering/simulation/xml/analysisGizmo/H3N2-analyze_v0_46_completion0.2_rep6.xml"
sbatch --time=10-0 --wrap="java -jar ~/clustering/software/beast_v0_46-simulateViruses.jar /home/ycheung/clustering/simulation/xml/analysisGizmo/H3N2-analyze_v0_46_completion0.1_rep6.xml"
sbatch --time=10-0 --wrap="java -jar ~/clustering/software/beast_v0_46-simulateViruses.jar /home/ycheung/clustering/simulation/xml/analysisGizmo/H3N2-analyze_v0_46_completion0.05_rep6.xml"
##########
sbatch --time=10-0 --wrap="java -jar ~/clustering/software/beast_v0_46-simulateViruses.jar /home/ycheung/clustering/simulation/xml/analysisGizmo/H3N2-analyze_v0_46_completion0.5_rep7.xml"
sbatch --time=10-0 --wrap="java -jar ~/clustering/software/beast_v0_46-simulateViruses.jar /home/ycheung/clustering/simulation/xml/analysisGizmo/H3N2-analyze_v0_46_completion0.2_rep7.xml"
sbatch --time=10-0 --wrap="java -jar ~/clustering/software/beast_v0_46-simulateViruses.jar /home/ycheung/clustering/simulation/xml/analysisGizmo/H3N2-analyze_v0_46_completion0.1_rep7.xml"
sbatch --time=10-0 --wrap="java -jar ~/clustering/software/beast_v0_46-simulateViruses.jar /home/ycheung/clustering/simulation/xml/analysisGizmo/H3N2-analyze_v0_46_completion0.05_rep7.xml"
#############
sbatch --time=10-0 --wrap="java -jar ~/clustering/software/beast_v0_46-simulateViruses.jar /home/ycheung/clustering/simulation/xml/analysisGizmo/H3N2-analyze_v0_46_completion0.5_rep8.xml"
sbatch --time=10-0 --wrap="java -jar ~/clustering/software/beast_v0_46-simulateViruses.jar /home/ycheung/clustering/simulation/xml/analysisGizmo/H3N2-analyze_v0_46_completion0.2_rep8.xml"
sbatch --time=10-0 --wrap="java -jar ~/clustering/software/beast_v0_46-simulateViruses.jar /home/ycheung/clustering/simulation/xml/analysisGizmo/H3N2-analyze_v0_46_completion0.1_rep8.xml"
sbatch --time=10-0 --wrap="java -jar ~/clustering/software/beast_v0_46-simulateViruses.jar /home/ycheung/clustering/simulation/xml/analysisGizmo/H3N2-analyze_v0_46_completion0.05_rep8.xml"
###############
sbatch --time=10-0 --wrap="java -jar ~/clustering/software/beast_v0_46-simulateViruses.jar /home/ycheung/clustering/simulation/xml/analysisGizmo/H3N2-analyze_v0_46_completion0.5_rep9.xml"
sbatch --time=10-0 --wrap="java -jar ~/clustering/software/beast_v0_46-simulateViruses.jar /home/ycheung/clustering/simulation/xml/analysisGizmo/H3N2-analyze_v0_46_completion0.2_rep9.xml"
sbatch --time=10-0 --wrap="java -jar ~/clustering/software/beast_v0_46-simulateViruses.jar /home/ycheung/clustering/simulation/xml/analysisGizmo/H3N2-analyze_v0_46_completion0.1_rep9.xml"
sbatch --time=10-0 --wrap="java -jar ~/clustering/software/beast_v0_46-simulateViruses.jar /home/ycheung/clustering/simulation/xml/analysisGizmo/H3N2-analyze_v0_46_completion0.05_rep9.xml"
###############
sbatch --time=10-0 --wrap="java -jar ~/clustering/software/beast_v0_46-simulateViruses.jar /home/ycheung/clustering/simulation/xml/analysisGizmo/H3N2-analyze_v0_46_completion0.5_rep10.xml"
sbatch --time=10-0 --wrap="java -jar ~/clustering/software/beast_v0_46-simulateViruses.jar /home/ycheung/clustering/simulation/xml/analysisGizmo/H3N2-analyze_v0_46_completion0.2_rep10.xml"
sbatch --time=10-0 --wrap="java -jar ~/clustering/software/beast_v0_46-simulateViruses.jar /home/ycheung/clustering/simulation/xml/analysisGizmo/H3N2-analyze_v0_46_completion0.1_rep10.xml"
sbatch --time=10-0 --wrap="java -jar ~/clustering/software/beast_v0_46-simulateViruses.jar /home/ycheung/clustering/simulation/xml/analysisGizmo/H3N2-analyze_v0_46_completion0.05_rep10.xml"
#for the mds = 0 .3 runs:
sbatch --time=10-0 --wrap="java -jar ~/clustering/software/beast_v0_46-simulateViruses.jar /home/ycheung/clustering/simulation/xml/analysisGizmo/H3N2-analyze_v0_46_completion0.05-mds0_3_rep6.xml"
sbatch --time=10-0 --wrap="java -jar ~/clustering/software/beast_v0_46-simulateViruses.jar /home/ycheung/clustering/simulation/xml/analysisGizmo/H3N2-analyze_v0_46_completion0.05-mds0_3_rep7.xml"
sbatch --time=10-0 --wrap="java -jar ~/clustering/software/beast_v0_46-simulateViruses.jar /home/ycheung/clustering/simulation/xml/analysisGizmo/H3N2-analyze_v0_46_completion0.05-mds0_3_rep8.xml"
sbatch --time=10-0 --wrap="java -jar ~/clustering/software/beast_v0_46-simulateViruses.jar /home/ycheung/clustering/simulation/xml/analysisGizmo/H3N2-analyze_v0_46_completion0.05-mds0_3_rep9.xml"
sbatch --time=10-0 --wrap="java -jar ~/clustering/software/beast_v0_46-simulateViruses.jar /home/ycheung/clustering/simulation/xml/analysisGizmo/H3N2-analyze_v0_46_completion0.05-mds0_3_rep10.xml"
sbatch --time=10-0 --wrap="java -jar ~/clustering/software/beast_v0_46-simulateViruses.jar /home/ycheung/clustering/simulation/xml/analysisGizmo/H3N2-analyze_v0_46_completion0.5-mds0_3_rep6.xml"
sbatch --time=10-0 --wrap="java -jar ~/clustering/software/beast_v0_46-simulateViruses.jar /home/ycheung/clustering/simulation/xml/analysisGizmo/H3N2-analyze_v0_46_completion0.5-mds0_3_rep7.xml"
sbatch --time=10-0 --wrap="java -jar ~/clustering/software/beast_v0_46-simulateViruses.jar /home/ycheung/clustering/simulation/xml/analysisGizmo/H3N2-analyze_v0_46_completion0.5-mds0_3_rep8.xml"
sbatch --time=10-0 --wrap="java -jar ~/clustering/software/beast_v0_46-simulateViruses.jar /home/ycheung/clustering/simulation/xml/analysisGizmo/H3N2-analyze_v0_46_completion0.5-mds0_3_rep9.xml"
sbatch --time=10-0 --wrap="java -jar ~/clustering/software/beast_v0_46-simulateViruses.jar /home/ycheung/clustering/simulation/xml/analysisGizmo/H3N2-analyze_v0_46_completion0.5-mds0_3_rep10.xml"
