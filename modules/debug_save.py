import pickle
from IPython import embed

# Here we save the raw results so that you can develop/debug additional pyexits script without running the tests
def debug_save(KR,R):
    with open("/tmp/npf_debug.pickle", "wb") as f:
        pickle.dump((KR,R), f)


# But you can do also interactive debugging
def embed(KR,R):
    embed()


def delete_time(KR,R):
    # YOu can change what is in your results.
    # For instance delete time so that you can still produce other "time" results but not the proper time
    del KR["time"]



# Debug this module by calling it directly and loading a previous pickel file
if __name__ == "__main__":
    with open("/tmp/npf_debug.pickle", "wb") as f:
        kr, r = pickle.load(f)
        # Do your thinfs with that, as called by NPF
        embed(kr,r)


