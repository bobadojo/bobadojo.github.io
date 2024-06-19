APIS=$(shell find ../apis/bobadojo -name "*.proto")


docs:
	go install github.com/pseudomuto/protoc-gen-doc/cmd/protoc-gen-doc@latest
	protoc ${APIS} \
		--proto_path='../apis' \
		--doc_opt='html,index.html' \
		--doc_out='.'
