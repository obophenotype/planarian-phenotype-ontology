# ----------------------------------------
# Top-level targets
# ----------------------------------------

all: all_imports patterns all_main all_subsets sparql_test all_reports all_assets $(ONT).csv
test: sparql_test all_reports

$(ONT).csv: 
	$(ROBOT) query -f csv -i ../patterns/definitions.owl --query ../sparql/planp_terms.sparql $@ && cp $@ ../.. 

#########################################
### Generating all ROBOT templates ######
#########################################

TEMPLATESDIR=../templates

TEMPLATES=$(patsubst %.tsv, $(TEMPLATESDIR)/%.owl, $(notdir $(wildcard $(TEMPLATESDIR)/*.tsv)))

$(TEMPLATESDIR)/%.owl: $(TEMPLATESDIR)/%.tsv $(SRC)
	$(ROBOT) merge -i $(SRC) template --template $< --output $@ && \
	$(ROBOT) annotate --input $@ --ontology-iri $(ONTBASE)/components/$*.owl -o $@

templates: $(TEMPLATES)
	echo $(TEMPLATES)
