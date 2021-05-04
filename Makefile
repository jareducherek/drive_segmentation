.PHONY: requirements

PROJECT_NAME=drive_segmentation

create_environment:
	conda create --yes --name $(PROJECT_NAME) --clone base

requirements:
	pip install -r requirements.txt
	python -m ipykernel install --user
	python -m ipykernel install --user --name $(PROJECT_NAME) --display-name "$(PROJECT_NAME)"
	conda install cudatoolkit=10.2
	pip install --pre torch -f https://download.pytorch.org/whl/nightly/cu102/torch_nightly.html --upgrade
