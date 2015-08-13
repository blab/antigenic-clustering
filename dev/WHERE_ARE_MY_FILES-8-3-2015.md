=== Codes and Data used in the Antigenic-Clustering manuscript ===

>kappa = mds = mds precision

File Sharing:
Dropbox
	upload replicate #1 OF H1N1 & H3N2 at different kappas to the dropbox for sharing with Trevor: /Users/charles/Dropbox/antigenic-clustering
	I uploaded replicate 1 for H1N1 and H3N2 at the various kappa that we considered.
	Dropbox:	/Users/charles/Dropbox/antigenic-clustering/MCMC-outputs/
		from /Users/charles/Documents/researchData/clustering/forManuscript	

	He probably doesn't need the simulated results.
	Also, I guess no need to upload MCMC outputs from other replicates and sample tree 2 - 6.
	Total: from /Users/charles/Documents/researchData/clustering
		- forManuscript: 32GB (but H1N1, H3N2, and simulation subfolders total: 2.28GB + 15.98GB + 11.51GB)
		- forManuscripts-moreReplicates: 13.31GB and counting
		- simulations: 443mb	

Condensed version of where most of the files are in:
	Manuscript (github folder): /Users/charles/Documents/research/antigenic/GenoPheno/antigenic-clustering
	Main development folder: /Users/charles/Documents/research/antigenic/GenoPheno/driver/clustering
		- but I am actively migrating the script files and xml files to the github folder 

	MCMC outputs, simulated data: 
		/Users/charles/Documents/researchData/clustering
			- probably can't upload online. It takes too much disk space.

----------------------------------------------------------------------------------------------------------------------------------------------------

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
 	- color scheme: /Users/charles/Documents/research/antigenic/GenoPheno/antigenic-clustering/code/analysisScripts/colorScheme/H1N1_colors.tsv
				 	/Users/charles/Documents/research/antigenic/GenoPheno/antigenic-clustering/code/analysisScripts/colorScheme/H3N2_colors.tsv
 	- script: 
 		#1. /Users/charles/Documents/research/antigenic/GenoPheno/antigenic-clustering/code/analysisScripts/computePosteriorMedianAntigenicJumpBetweenSeedViruses-8-3-2015.R
 		#2. /Users/charles/Documents/research/antigenic/GenoPheno/antigenic-clustering/code/analysisScripts/generate_mu-stackedAndUnstackedPlots.R
 			- obsolete: /Users/charles/Documents/research/antigenic/GenoPheno/antigenic-clustering/code/analysisScripts/stacked-muplot-8-3-2015.R
 		- figure: /Users/charles/Documents/research/antigenic/GenoPheno/driver/clustering/analysisManuscript7-31-2015/mu-stacked-h3n2-h1n1.pdf

 Figure mu parameter plots (Supp):
 	- H3N2 and H1N1 script: /Users/charles/Documents/research/antigenic/GenoPheno/antigenic-clustering/code/analysisScripts/stacked-muplot-8-3-2015.R
 		- obsolete version: /Users/charles/Documents/research/antigenic/GenoPheno/antigenic-clustering/code/analysisScripts/H3N2-investigateExcisionPointsNewParametrization-2-12-2015.R
		- obsolete version: /Users/charles/Documents/research/antigenic/GenoPheno/antigenic-clustering/code/analysisScripts/H1N1-investigateExcisionPointsNewParametrization-2-12-2015.R
	- figure: 
		- H1N1 /Users/charles/Documents/research/antigenic/GenoPheno/driver/clustering/analysisManuscript7-31-2015/H1N1/mu/mu-Euclidean-mds0_3.pdf
		- H3N2 /Users/charles/Documents/research/antigenic/GenoPheno/driver/clustering/analysisManuscript7-31-2015/H3N2/mu/mu-Euclidean-mds0_1.pdf
		

 Figure Consensus tree:
 	- scripts:	/Users/charles/Documents/research/antigenic/GenoPheno/antigenic-clustering/code/analysisScripts/pythonScripts_2_7/treeConsensus.py
 	- H3N2 output trees for Trevor to use: /Users/charles/Documents/research/antigenic/GenoPheno/driver/clustering/analysisManuscript7-31-2015/H3N2/consensus
 
 Figure Antigenic Map:
 	- from data: /Users/charles/Documents/researchData/clustering/forManuscript/H3N2/C3b-mds0_1/H3N2_mds.drifted.VirusLocs.log
 		and etc. for different kappa, along with the groupNames (seed viruses hardcoded in the R script)
	- scripts: /Users/charles/Documents/research/antigenic/GenoPheno/antigenic-clustering/code/analysisScripts/computePosteriorMedianAntigenicLocationSeedViruses-8-3-2015.R
	- figure: 
		-h3n2: /Users/charles/Documents/research/antigenic/GenoPheno/driver/clustering/analysisManuscript7-31-2015/H3N2/consenus/H3N2-mds0_1.postMedianSeedVirusLocation.txt
				/Users/charles/Documents/research/antigenic/GenoPheno/driver/clustering/analysisManuscript7-31-2015/H3N2/consenus/h3n2-antigenicMap-median-mds0_1-seedVirusesSortedByYear.png
				and other files in this folder
	
 
 Figure Heatmap for both H1N1 and H3N2 (#1):
 	- script #1: To get the heatmap, you have to first get the adjacency matrix by using a java program from the beast code:  mergeAdjacencyMatrixPlots.java
		-    (pretty much, countCLusterCooccurnece was an older version of that script, without accounting for NUM_BURNINS. - so I can just ignore that script from now on)
	- script #2: To get the heatmap, run:  /Users/charles/Documents/research/antigenic/GenoPheno/antigenic-clustering/code/analysisScripts/H1N1-heatmapAdjacencyMatrix-forManuscript-7-31-2015.R
	- script #3: /Users/charles/Documents/research/antigenic/GenoPheno/antigenic-clustering/code/analysisScripts/pythonScripts_3/NewickTreeParseVirusNames.py
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

 Statistic and Figures for MCMC Diagnostics:
 	 - /Users/charles/Documents/research/antigenic/GenoPheno/antigenic-clustering/dev/code/analysisScripts/GelmanRubinStatistics-8-3-2015.R
 	 - /Users/charles/Documents/research/antigenic/GenoPheno/antigenic-clustering/dev/code/analysisScripts/euclideanStatMuToSeeInTracer.R
 	 	- on just replicate #1 of kappa 0.1 h3n2
 	 		-/Users/charles/Documents/researchData/clustering/forManuscript-organized/h3n2/kappa0_1/C3b-mds0_1/EuclideanStat.log
 	 - Tracer
	 	 - Some manual summary /Users/charles/Documents/research/antigenic/GenoPheno/antigenic-clustering/manuscript/tracer-inspection-MCMC-diagnostic-summary.docx
 	 - Figures and Statistics: 
 	 	-H1N1: /Users/charles/Documents/research/antigenic/GenoPheno/driver/clustering/analysisManuscript7-31-2015/H1N1/MCMC-diagnostics
 	 	-H3N2: /Users/charles/Documents/research/antigenic/GenoPheno/driver/clustering/analysisManuscript7-31-2015/H3N2/MCMC-diagnostics
		
 Figure MCMC sensitivity analyses:
 	MCMC replicates (#1-10)
 		- scripts: 
 			- Gelman Rubin graph: /Users/charles/Documents/research/antigenic/GenoPheno/antigenic-clustering/code/analysisScripts/GelmanRubinStatistics-July29-2015.R
 			- concordance plot between a pair of replicates: /Users/charles/Documents/research/antigenic/GenoPheno/antigenic-clustering/code/analysisScripts/get_p_on_and_evaluateMCMCConvergence-forManuscript-2-12-2015.R
! 		- figures:
 	
 	MCMC different sampled trees (#1-6)
 		- pre-script:  	To get the heatmap, you have to first get the adjacency matrix by using a java program from the beast code:  mergeAdjacencyMatrixPlots.java
! 			- I think is the same one
 	 	- scripts: 
 	 		- H3N2: /Users/charles/Documents/research/antigenic/GenoPheno/antigenic-clustering/code/analysisScripts/H3N2-heatmapAdjacencyMatrix-forManuscript-2-12-2015.R
 	 		- H1N1: /Users/charles/Documents/research/antigenic/GenoPheno/antigenic-clustering/code/analysisScripts/H1N1-heatmapAdjacencyMatrix-forManuscript-7-31-2015.R
! 		- figures:
 
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
 		/Users/charles/Documents/research/antigenic/GenoPheno/antigenic-clustering/code/analysisScripts/pythonScripts_2_7/H3N2_makeXMLforGizmo_analyzeSimData.py
 		/Users/charles/Documents/research/antigenic/GenoPheno/antigenic-clustering/code/analysisScripts/pythonScripts_2_7/H3N2_createXMLforSimulation-2-18-2015.py
 	To make different completion rate by thinning HI data: 
 		- /Users/charles/Documents/research/antigenic/GenoPheno/antigenic-clustering/code/analysisScripts/pythonScripts_2_7/H3N2_thinHI_data-2-18-2015.py
 	To simulate data:
		/Users/charles/Documents/research/antigenic/GenoPheno/antigenic-clustering/code/xml/simulations/simulation
	To analyze the simulated data:
		/Users/charles/Documents/research/antigenic/GenoPheno/antigenic-clustering/code/xml/simulations/analysisGizmo
 Simulated Data: 
 	- /Users/charles/Documents/researchData/clustering/forManuscript/simulation

 Commands used in Gizmo:
 	- note: each replicate required a different command because they run on different simulated data.
 	- see Commands #1
 	
 MCMC outputs: 
 	replicate 1-5: /Users/charles/Documents/researchData/clustering/forManuscript/simulation
 	replicate 6-10: /Users/charles/Documents/researchData/clustering/forManuscripts-moreReplicates/simulations
 
 Figure ROC (#7):
 	- script: /Users/charles/Documents/research/antigenic/GenoPheno/antigenic-clustering/code/analysisScripts/simulationAnalysis-7-30-2015-v4.R
 				- obsolete: /Users/charles/Documents/research/antigenic/GenoPheno/driver/clustering/scripts/simulationAnalysis-2-20-2015-v3.R		  
	- figure: /Users/charles/Documents/research/antigenic/GenoPheno/driver/clustering/simulationsAnalysis/analysis/avgTrueVsFalsePositives-completionRate-10replicates.pdf
		copied to: /Users/charles/Documents/research/antigenic/GenoPheno/antigenic-clustering/manuscript/figures/custom/avgTrueVsFalsePositives-completionRate-10replicates.pdf






MCMC proposal schematic diagrams: /Users/charles/Documents/research/antigenic/GenoPheno/antigenic-clustering/manuscript/figures/lineart/
	Figure flipAndBalance: /Users/charles/Documents/research/antigenic/GenoPheno/antigenic-clustering/manuscript/figures/lineart/flipAndBalance.key
	Figure swapAndFlipNeighbor: /Users/charles/Documents/research/antigenic/GenoPheno/antigenic-clustering/manuscript/figures/lineart/swapAndFlipNeighbor.key
	Figure swapIandMuNeighbor: /Users/charles/Documents/research/antigenic/GenoPheno/antigenic-clustering/manuscript/figures/lineart/swapIandMuNeighbor.key
	Figure walkAndBalance: /Users/charles/Documents/research/antigenic/GenoPheno/antigenic-clustering/manuscript/figures/lineart/walkAndBalance.key



---------------------------------------------------------------------------------------------------------------

Additional:

Figure Tree annotated by pOn
	Script: 
		#1 - produce max posterior tree
		#2 - produce the p_on file
		#3 - merge p_on to max posterior tree: /Users/charles/Documents/research/antigenic/GenoPheno/driver/clustering/scripts/pythonScripts_2_7/merge_p_on_with_Tree.py	
	Figure:	/Users/charles/Documents/research/antigenic/GenoPheno/driver/clustering/analysisManuscript2-12-2015/H3N2/tree/H3N2_C3b-mds0_05-maxPosterior-p_on-integerScaledBy100.trees

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
  	script: /Users/charles/Documents/research/antigenic/GenoPheno/driver/clustering/scripts/pythonScripts_2_7/loadTitersFromTRVBdataFromExternalFile-Aug2-2015-forManuscript.py
		adopted from  /Users/charles/Documents/research/antigenic/GenoPheno/driver/clustering/scripts/pythonScripts_2_7/loadTitersFromTRVBdata.py
			that uses the file written out from the rethinkdb.
		- the external file is in: /Users/charles/Documents/research/antigenic/GenoPheno/driver/clustering/analysisManuscript7-31-2015/H3N2/titerFile/bedford_integrating_2014_h3n2_titerMatrix.txt

Figure S2:





file://localhost/Users/charles/Documents/research/antigenic/GenoPheno/driver/clustering/analysisManuscript2-12-2015/H3N2/heatmap/H3N2-C3b-mds0_15-ordered.png
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




