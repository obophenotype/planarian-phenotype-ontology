# ----------------------------------------
# Top-level targets
# ----------------------------------------

all: all_imports patterns all_main all_subsets sparql_test all_reports all_assets $(ONT).csv
test: sparql_test all_reports

$(ONT).csv: 
	$(ROBOT) query -f csv -i ../patterns/definitions.owl --query ../sparql/planp_terms.sparql $@ && cp $@ ../.. 


