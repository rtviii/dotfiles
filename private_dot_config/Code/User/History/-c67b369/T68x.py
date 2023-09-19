import asyncio
import os
from ribctl import RIBETL_DATA
from ribctl.ribosome_assets import Assetlist, obtain_assets, obtain_assets_threadpool

def cmd_etl(args):
    print(args)
    print("")
    if args.obtain_all_structures:
        ASL = Assetlist(profile=True)
        obtain_assets_threadpool(
            [],
            ASL,
            workers=16,
            get_all=True,
            overwrite=True
        )
    if args.rcsb_id:
        if args.tunnel:
            print("gettig tunnel")



    # if args.struct:
    #     RCSB_ID = str(args.obtain_structure)
    #     loop    = asyncio.get_event_loop()
    #     loop.run_until_complete(
    #         obtain_assets(
    #             RCSB_ID,
    #             Assetlist(profile=True),
    #             overwrite=True
    #         )
    #     )