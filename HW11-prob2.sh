# Usage : bash HW11-prob2.sh
# Completes problem 2

# Build HMM profile for transporter gene using alligned data

/afs/nd.edu/user30/aquattro/local/bin/hmmbuild hmmTransporter.fasta gene_sequences/alligned-transporter.fasta

# Use hmmsearch to search proteome data for hits against the HMM transporter gene profile

for n in proteomes/*.fasta
do
/afs/nd.edu/user30/aquattro/local/bin/hmmsearch --tblout $n.hits hmmTransporter.fasta $n
done

# Compile the name and number of hits of all the proteomes data into one file

for x in proteomes/*.hits
do
echo $x >> proteomesHits.txt
echo "number of hits" >> proteomesHits.txt
cat $x | grep -v "#" | wc -l >> proteomesHits.txt
done
