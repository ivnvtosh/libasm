LIBASM=library/libasm.a
HEADER=include

FUNCTIONS[0]=strcpy
FUNCTIONS[1]=strdup
FUNCTIONS[2]=strjoin
FUNCTIONS[3]=strlen

function execute {

	gcc test/$FUNCTION.c $LIBASM -I $HEADER -o bin/$FUNCTION.out

	if [[ $? == 0 ]]
	then
		echo $FUNCTION
		bin/"$FUNCTION".out
	fi
}

function execute_with_sanitize_address {

	gcc -fsanitize=address test/$FUNCTION.c $LIBASM -I $HEADER -o bin/"$FUNCTION"_san.out

	if [[ $? == 0 ]]
	then
		echo $FUNCTION with sanitize address
		bin/"$FUNCTION"_san.out
	fi
}

function execute_for_gdb {

	gcc -g test/$FUNCTION.c $LIBASM -I $HEADER -o bin/"$FUNCTION"_gdb.out

	if [[ $? == 0 ]]
	then
		echo $FUNCTION for gdb
		bin/"$FUNCTION"_gdb.out
	fi
}

# Start

mkdir -p bin

if [[ $1 == "func" ]]
then
	for FUNCTION in ${FUNCTIONS[*]} 
	do
		if [[ $FUNCTION == $2 ]] 
		then 
			execute
			execute_with_sanitize_address
			execute_for_gdb
		fi
	done
else
	for FUNCTION in ${FUNCTIONS[*]} 
	do
		execute
		execute_with_sanitize_address
		execute_for_gdb
	done
fi
