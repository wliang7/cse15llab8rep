CPATH='.:lib/hamcrest-core-1.3.jar:lib/junit-4.13.2.jar'

rm -rf student-submission
rm -rf grading-area

mkdir grading-area

git clone $1 student-submission
echo 'Finished cloning'


# Draw a picture/take notes on the directory structure that's set up after
# getting to this point
set -e
files='list-examples-grader-1'
for file in $files
do
    if [[ -f $file ]] && [[ $file == *ListExamples* ]]
    then 
        wc -l $file
    fi
done
# Then, add here code to compile and run, and do any post-processing of the
# tests
cp -r 