OPEN_SPACE_DATASET=$(DATASET_DIR)open-space.csv
OPEN_SPACE_TRANSFORMED_FILES=\
    $(TRANSFORMED_DIR)open-space/afe9e6821f5b8e7ecf41a5284587c9a0e2b7a17a255b96d4c9073a5110b584e4.csv\
    $(TRANSFORMED_DIR)open-space/cafadb8e0a05a2c0497d175d0abf5d05b2bb88b6040a2a68f73ae6fb9313234b.csv

$(TRANSFORMED_DIR)open-space/afe9e6821f5b8e7ecf41a5284587c9a0e2b7a17a255b96d4c9073a5110b584e4.csv: collection/resource/afe9e6821f5b8e7ecf41a5284587c9a0e2b7a17a255b96d4c9073a5110b584e4
	$(run-pipeline)

$(TRANSFORMED_DIR)open-space/cafadb8e0a05a2c0497d175d0abf5d05b2bb88b6040a2a68f73ae6fb9313234b.csv: collection/resource/cafadb8e0a05a2c0497d175d0abf5d05b2bb88b6040a2a68f73ae6fb9313234b
	$(run-pipeline)

$(OPEN_SPACE_DATASET): $(OPEN_SPACE_TRANSFORMED_FILES)
	$(build-dataset)

transformed:: $(OPEN_SPACE_TRANSFORMED_FILES)

dataset:: $(OPEN_SPACE_DATASET)
