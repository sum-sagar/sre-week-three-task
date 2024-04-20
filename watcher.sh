#TODO
#!/bin/bash 
#1. Define Variables: Set the namespace, deployment name, and maximum number of restarts allowed before scaling down the deployment.
NAMESPACE="sre"
DEPLOYMENT_NAME="swype-app"
MAX_NO_RESTARTS="3"

while true  #2. Start a Loop: Begin an infinite loop that will continue until explicitly broken
do 
NO_OF_RESTARTS=$(kubectl get pods -n ${NAMESPACE} -l app=${DEPLOYMENT_NAME} -o jsonpath="{.items[0].status.containerStatuses[0].restartCount}")  #3. Check Pod Restarts: Within the loop, use the kubectl get pods command to retrieve the number of restarts of the pod associated with the specified deployment in the specified namespace.

echo "Current Number of Restarts: ${NO_OF_RESTARTS}"  #4. Display Restart Count: Print the current number of restarts to the console.

if((NO_OF_RESTARTS>MAX_NO_RESTARTS)); then   #5. Check Restart Limit: Compare the current number of restarts with the maximum allowed number of restarts.
echo "The maximum allowed number of restarts has exceeded,Scaling down deployment..."
kubectl scale --replicas=0 deployment/${DEPLOYMENT} -n ${NAMESPACE}   #6. Scale Down if Necessary: If the number of restarts is greater than the maximum allowed, print a message to the console, scale down the deployment to zero replicas using the kubectl scale command, and break the loop.
break   #break the loop
else
sleep 60   #7. Pause: If the number of restarts is not greater than the maximum allowed, pause the script for 60 seconds before the next check.
fi  #close the if block
done