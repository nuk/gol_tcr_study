TEST="rspec"
COMMIT="git add . && git commit -am 'TCR STEP'"
REVERT="git revert"

(eval $TEST) && (eval $COMMIT) || (eval $REVERT)
