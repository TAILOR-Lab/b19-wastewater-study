python b19_coverage_map.py \
    'Parvovirus_B19.bam' \
    'Parvovirus_B19.gb' \
    'Parvovirus_B19' \
    1 \
    5596 \
    --coverage_scale linear \
    --feature_types CDS,repeat_region,misc_feature \
    --feature_colors "CDS=#D3DC7F,repeat_region=purple,misc_feature=green" \
    --output 'Parvovirus B19.png' \