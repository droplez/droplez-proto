# Generate documentarion in markdown
docker-docs-gen:
	docker run --rm \
  	-v $$(pwd)/docs:/out \
  	-v $$(pwd)/proto:/proto \
  	pseudomuto/protoc-gen-doc --doc_opt=markdown,proto_documentation.md --proto_path=proto \
		$$(find proto -type f -iname "*.proto")

# Lint protobuf files
docker-lint:
	docker run --rm \
		-v $$(pwd):/workspace \
		--workdir /workspace \
		yoheimuta/protolint lint \
		$$(find . -type f -iname "*.proto")

lint: 
	protolint lint -config_path ./.protolint.yaml .