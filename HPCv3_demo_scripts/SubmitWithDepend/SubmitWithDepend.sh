
#### First job, no dependencies
jobs=$(sbatch --array=1-3 job1.sh)
jid1=$(echo $jobs | awk -F" "  '{print $4}')
echo "Submitted  $jid1"
echo "$jid1" | grep "" > jobs_submitted.txt

#### Second job, depends on first
jobs=$(sbatch  --dependency=afterok:$jid1 --array=1-3 job2.sh)
jid2=$(echo $jobs | awk -F" "  '{print $4}')
echo "Submitted  $jid2"
echo "$jid2" | grep "" >> jobs_submitted.txt

#### Third job, depends on second
jobs=$(sbatch  --dependency=afterok:$jid2 --array=1-3 job3.sh)
jid3=$(echo $jobs | awk -F" "  '{print $4}')
echo "Submitted  $jid3"
echo "$jid3" | grep "" >> jobs_submitted.txt

#### Forth job, depends on third
jobs=$(sbatch  --dependency=afterok:$jid3 --array=1-3 job4.sh)
jid4=$(echo $jobs | awk -F" "  '{print $4}')
echo "Submitted  $jid4"
echo "$jid4" | grep "" >> jobs_submitted.txt

#### Fifth job, depends on third and forth
jobs=$(sbatch  --dependency=afterok:$jid3:$jid4 --array=1-3 job5.sh)
jid5=$(echo $jobs | awk -F" "  '{print $4}')
echo "Submitted  $jid5"
echo "$jid5" | grep "" >> jobs_submitted.txt

echo "Please use squeue command to monitor your jobs status"
echo "You may run collect_sacct.sh to vew exit status of your jobs upon completion"



