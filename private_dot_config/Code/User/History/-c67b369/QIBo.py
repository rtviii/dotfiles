
def cmd_etl(args):
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

    if args.obtain_structure:
        RCSB_ID = str(args.obtain_structure)
        loop    = asyncio.get_event_loop()
        loop.run_until_complete(
            obtain_assets(
                RCSB_ID,
                Assetlist(profile=True),
                overwrite=True
            )
        )