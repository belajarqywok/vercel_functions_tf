tf-plan: 
	terraform plan -no-color \
		-var="api_token=xxxxxx" \
		-var="github_ref=xxxxxxx"


tf-apply:
	terraform apply -auto-approve -no-color \
		-var="api_token=xxxxxx" \
		-var="github_ref=xxxxxxx"