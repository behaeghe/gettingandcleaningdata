---
title: "CodeBook"
author: "JRB"
date: "05MAY2016"
output: pdf_document
---
*This code book describes the variables defined in the tidy1.txt dataset* 
---
*NOTE: The variable name in the derived dataset (summarybysubjectactivity.txt) are named meanofxxxx where xxx is the original variable name from tidy1 so for example timebodyaccelerationmeany becomes meanoftimebodyaccelerationmeany*
---
 
ID | Variable Name              | Type  |measure|axis|domain|description|Unit|
---|----------------------------|----- |-------|----|------|----------|----|
1  | subject                    |NA     |NA     |NA  | NA   |subject ID|NA  |
2  | activity                   |NA   |NA     |NA  | NA   |actvity   |NA  |
3  |timebodyaccelerationmeanx   |acceleration| mean|x|time|body|g|
4|timebodyaccelerationmeany     |acceleration| mean|y|time|body|g|
5|timebodyaccelerationmeanz     |acceleration| mean|z|time|body|g|
6|timebodyaccelerationstddevx   |acceleration| std dev|x|time|body|g|
7|timebodyaccelerationstddevy   |acceleration| std dev|y|time|body|g|
8|timebodyaccelerationstddevz   |acceleration| std dev|z|time|body|g|
9|timegravityaccelerationmeanx  |acceleration| std dev|x|time|body|g|
10|timegravityaccelerationmeany |acceleration| std dev|y|time|body|g|
11|timegravityaccelerationmeanz |acceleration| std dev|z|time|body|g|
12|timegravityaccelerationstddevx |acceleration| std dev|x|time|gravity|g|
13|timegravityaccelerationstddevy |acceleration| std dev|y|time|gravity|g|
14|timegravityaccelerationstddevz |acceleration| std dev|z|time|gravity|g|
15|timebodyaccelerationjerkmeanx  |acceleration| mean|x|time|jerk|g|
16|timebodyaccelerationjerkmeany  |acceleration| mean|y|time|jerk|g|
17|timebodyaccelerationjerkmeanz  |acceleration| mean|z|time|jerk|g|
18|timebodyaccelerationjerkstddevx |acceleration| std dev|x|time|jerk|g|
19|timebodyaccelerationjerkstddevy |acceleration| std dev|y|time|jerk|g|
20|timebodyaccelerationjerkstddevz |acceleration| std dev|z|time|jerk|g|
21|timebodygyroscopemeanx          |gyroscope| mean|x|time|body|rad/s|
22|timebodygyroscopemeany          |gyroscope| mean|y|time|body|rad/s|
23|timebodygyroscopemeanz          |gyroscope| mean|z|time|body|rad/s|
24|timebodygyroscopestddevx        |gyroscope| std dev|x|time|body|rad/s|
25|timebodygyroscopestddevy        |gyroscope| std dev|y|time|body|rad/s|
26|timebodygyroscopestddevz        |gyroscope| std dev|z|time|body|rad/s|
27|timebodygyroscopejerkmeanx  |gyroscope| mean|x|time|jerk|rad/s|
28|timebodygyroscopejerkmeany |gyroscope| mean|y|time|jerk|rad/s|
29|timebodygyroscopejerkmeanz|gyroscope| mean|z|time|jerk|rad/s|
30|timebodygyroscopejerkstddevx|gyroscope| std dev|x|time|jerk|rad/s|
31|timebodygyroscopejerkstddevy|gyroscope| std dev|y|time|jerk|rad/s|
32|timebodygyroscopejerkstddevz|gyroscope| std dev|z|time|jerk|rad/s|
33|timebodyaccelerationmagnitudestddev|acceleration| std dev|NA|time|magnitude|g|
34|timegravityaccelerationmagnitudestddev|acceleration| std dev|NA|time|magnitude|g|
35|timebodyaccelerationjerkmagnitudestddev|acceleration| std dev|NA|time|magnitude|g|
36|timebodygyroscopemagnitudestddev|gyroscope| std dev|NA|time|magnitude|rad/s|
37|timebodygyroscopejerkmagnitudestddev|acceleration| std dev|x|time|magnitude|rad/s|
38|frequencybodyaccelerationmeanx|acceleration| mean|x|frequency|body|Hz|
39|frequencybodyaccelerationmeany|acceleration| mean|y|frequency|body|Hz|
40|frequencybodyaccelerationmeanz|acceleration| mean|z|frequency|body|Hz|
41|frequencybodyaccelerationstddevx|acceleration|std dev|x|frequency|body|Hz|
42|frequencybodyaccelerationstddevy|acceleration|std dev|y|frequency|body|Hz|
43|frequencybodyaccelerationstddevz|acceleration|std dev|x|frequency|body|Hz|
44|frequencybodyaccelerationjerkmeanx|acceleration| mean|x|frequency|jerk|Hz|
45|frequencybodyaccelerationjerkmeany|acceleration| mean|y|time|jerk|Hz|
46|frequencybodyaccelerationjerkmeanz|acceleration| mean|z|time|jerk|Hz|
47|frequencybodyaccelerationjerkstddevx|acceleration|std dev|x|frequency|jerk|Hz|
48|frequencybodyaccelerationjerkstddevy|acceleration|std dev|y|frequency|jerk|Hz|     
49|frequencybodyaccelerationjerkstddevz|acceleration|std dev|z|frequency|jerk|Hz|
50|frequencybodygyroscopemeanx|gyroscope| mean|x|frequency|body|Hz|
51|frequencybodygyroscopemeany|gyroscope| mean|y|frequency|body|Hz|
52|frequencybodygyroscopemeanz|gyroscope| mean|z|frequency|body|Hz|
53|frequencybodygyroscopestddevx|gyroscope| std dev|x|frequency|body|Hz|
54|frequencybodygyroscopestddevy|gyroscope| std dev|y|frequency|body|Hz|
55|frequencybodygyroscopestddevz|gyroscope| std dev|z|frequency|body|Hz|
56|frequencybodyaccelerationmagnitudestddev|acceleration| std dev|NA|frequency|magnitude|Hz|
57|frequencybodybodyaccelerationjerkmagnitudestddev|acceleration| std dev|NA|frequency|jerk|Hz|
58|frequencybodybodygyroscopemagnitudestddev|gyroscope| std dev|NA|frequency|magnitude|Hz|
59|frequencybodybodygyroscopejerkmagnitudestddev|gyroscope| std dev|NA|frequency|jerk|Hz|