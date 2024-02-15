The purpose of this project is to detect boundaries of an agriculture field.
The provided MATLAB code performs the following image processing tasks:
Reads and displays an image titled "Field Image."
Utilizes K-Means clustering on the RGB image with 8 clusters, displaying the labeled regions.
Converts the image to the Lab* color space, performs K-Means clustering on the ab components, and displays the labeled regions.
Segments and saves objects belonging to cluster 5, displaying the result.
Performs another round of K-Means clustering on the RGB image with 5 clusters, displaying the labeled regions.
Segments and saves objects belonging to cluster 3, displaying the result.
Applies image blurring and binarization, saving the result as "final9_2.jpg" and displaying the binary image.
Binarizes the grayscale image extracted from cluster 3, subtracts it from the previous result, and saves the outcome.
Applies image filtering and additional processing, saving the final processed image as "final9_1.jpg" and displaying it.
