import pandas as pd
import numpy as np

from preprocessors import Pipeline
import config

from pipeline import pipeline




if __name__ == '__main__':
    
    # load data set
    data = np.genfromtxt('X_test.csv', delimiter=',')
    
    #pipeline.ads(data)
    #pipeline.train()
    #print('model performance')
    #pipeline.evaluate_model()
    #print()
    #print('Some predictions:')
    preditions = pipeline.predict(data)
    print(preditions)