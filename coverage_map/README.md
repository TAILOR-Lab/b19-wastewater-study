## Coverage Plotting for Parvovirus B19 (Figure 4A)
This folder contains an example script and input files used to generate a genome-wide coverage plot for Parvovirus B19 (B19V) using hybrid-capture wastewater sequencing data. The resulting figure replicates the top panel of Figure 4A from the manuscript:

“Wastewater Parvovirus B19 Signal Amid Rising Maternal Cases”  
Clark JR and Tisza MJ et al., 2025 (Preprint)

## Contents
*`b19_coverage_map.py`*
Python script to generate a multi-track plot showing read coverage, annotated genomic features, and individual read mappings.

*`Parvovirus_B19.bam and Parvovirus_B19.bai`*
Aligned reads from a representative composite wastewater sample (Houston), used to demonstrate full-genome B19V recovery.

*`Parvovirus_B19.gb`*
GenBank reference for B19V (AY386330.1) including annotated features (NS1, VP1, VP2, 11-kDa).

*`Parvovirus_B19_coverage_map.png`*
Example output figure matching the coverage panel of Figure 4A.

*`Run.sh`*
Shell script with example command to run the figure generation.

## Description
The Python script generates a three-track figure:

  1. Coverage Track (top): Read depth across the full B19V genome.
  2. Feature Track (middle): CDS, repeat regions, and misc features from the GenBank file.
  3. Read Track (bottom): Individual short reads stacked to assess evenness and detect dropouts.

This script was adapted from a similar visualization tool used in the HIV Wastewater Study, updated for B19V genome structure and figure layout.

## How to Run
Install the required Python packages:

```
pip install matplotlib numpy pysam biopython
```

Then run the script via:

```
bash Run.sh
```

Or manually:
```
python b19_coverage_map.py \
    Parvovirus_B19.bam \
    Parvovirus_B19.gb \
    Parvovirus_B19 \
    1 \
    5596 \
    --coverage_scale linear \
    --feature_types CDS,repeat_region,misc_feature \
    --feature_colors "CDS=#D3DC7F,repeat_region=purple,misc_feature=green" \
    --output "Parvovirus_B19_coverage_map.png"
```

## Contact
Justin R. Clark, Ph.D.   
Assistant Professor   
TAILΦR Labs, Baylor College of Medicine
