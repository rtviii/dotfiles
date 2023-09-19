import asyncio
import os
from ribctl import RIBETL_DATA
from ribctl.ribosome_assets import Assetlist, RibosomeAssets, obtain_assets, obtain_assets_threadpool

def cmd_etl(args):
    print(args)
    print("")
    if args.obtain_all_structures:
        ASL = Assetlist(profile=True)

        if args.tunnel:
            ASL.ptc_coords=True
        if args.cif:
            ASL.cif_and_chains=True
        if args.updated_cif:
            ASL.
        if args.chains:
            print("getting chains")
        

        obtain_assets_threadpool(
            [],
            ASL,
            workers=16,
            get_all=True,
            overwrite=True
        )
    if args.rcsb_id:
        if args.tunnel:
            print(RibosomeAssets(args.rcsb_id)._ptc_residues())
        if args.cif:
            asyncio.run(RibosomeAssets(args.rcsb_id)._verify_cif())
        if args.updated_cif:
            print("getting updated cif")
        if args.chains:
            print("getting chains")



