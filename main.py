#! /usr/bin/env python

import os

from aiohttp import web

routes = web.RouteTableDef()


@routes.get('/hello')
async def hello(request: web.Request) -> web.Response:
    name = request.query.get('name', 'stranger')
    message = f'Hello {name}!'
    return web.Response(body=message)

if __name__ == '__main__':
    app = web.Application()
    app.add_routes(routes)
    web.run_app(app, host='0.0.0.0', port=int(os.environ.get('PORT', '8088')))
