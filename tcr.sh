TEST="rspec"
COMMIT="git add . && git commit -am 'TCR STEP'"
REVERT="git reset --hard HEAD~1"

(eval $COMMIT) && (eval $TEST) || (eval $REVERT)
