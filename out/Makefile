build:
	OCAMLPATH=../../../bin ocamlfind opt -o out.exe -linkpkg -package fstarlib,yojson,batteries,zarith lem_bool.ml pset.ml pmap.ml either.ml big_int_impl.ml nat_big_num.ml nat_num.ml lem.ml lem_basic_classes.ml lem_tuple.ml lem_function.ml lem_maybe.ml lem_num.ml lem_list.ml lem_either.ml lem_set_helpers.ml lem_set.ml lem_map.ml lem_word.ml xstring.ml lem_string.ml lem_show.ml lem_pervasives.ml word256.ml word160.ml word8.ml word64.ml word4.ml keccak.ml evm.ml conv.ml hexparser.ml Semantics.ml hextolistword.ml vmTestParser.ml constant.ml TestResult.ml traverseJsons.ml runVmTest.ml

clean:
	rm *.o *.cmi *.cmx
