%%%-------------------------------------------------------------------
%% @doc Behaviour to implement for eectd Etcd.Cluster.
%%  All detail documents please visit https://github.com/etcd-io/etcd/blob/master/Documentation/dev-guide/api_reference_v3.md
%% @end
%%%-------------------------------------------------------------------

%% This module was generated on 2018-09-11T07:54:56+00:00 and should not be modified manually

-module(eetcd_cluster).

-export([member_add/1]).
-export([member_remove/1]).
-export([member_update/1]).
-export([member_list/1]).

%% @doc Unary RPC 
-spec member_add(router_pb:'Etcd.MemberAddRequest'()) ->
    {ok, router_pb:'Etcd.MemberAddResponse'()} | {error, term()}.
member_add(Request) ->
    eetcd_stream:unary(Request, <<"/etcdserverpb.Cluster/MemberAdd">>, 'Etcd.MemberAddResponse').

%% @doc Unary RPC 
-spec member_remove(router_pb:'Etcd.MemberRemoveRequest'()) ->
    {ok, router_pb:'Etcd.MemberRemoveResponse'()} | {error, term()}.
member_remove(Request) ->
    eetcd_stream:unary(Request, <<"/etcdserverpb.Cluster/MemberRemove">>, 'Etcd.MemberRemoveResponse').

%% @doc Unary RPC 
-spec member_update(router_pb:'Etcd.MemberUpdateRequest'()) ->
    {ok, router_pb:'Etcd.MemberUpdateResponse'()} | {error, term()}.
member_update(Request) ->
    eetcd_stream:unary(Request, <<"/etcdserverpb.Cluster/MemberUpdate">>, 'Etcd.MemberUpdateResponse').

%% @doc Unary RPC 
-spec member_list(router_pb:'Etcd.MemberListRequest'()) ->
    {ok, router_pb:'Etcd.MemberListResponse'()} | {error, term()}.
member_list(Request) ->
    eetcd_stream:unary(Request, <<"/etcdserverpb.Cluster/MemberList">>, 'Etcd.MemberListResponse').
