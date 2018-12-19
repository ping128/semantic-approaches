type token =
  | INT of (int)
  | ID of (string)
  | PLUS
  | DIV
  | LESSTHAN
  | NOT
  | AND
  | EQ
  | IF
  | ELSE
  | WHILE
  | TRUE
  | FALSE
  | READ
  | SPAWN
  | PRINT
  | HALT
  | INTDCLR
  | LPAREN
  | RPAREN
  | LCBRCT
  | RCBRCT
  | SEMICOLON
  | COMMA
  | EOF

open Parsing;;
let _ = parse_error;;
# 2 "parser.mly"
open Bigstep
# 33 "parser.ml"
let yytransl_const = [|
  259 (* PLUS *);
  260 (* DIV *);
  261 (* LESSTHAN *);
  262 (* NOT *);
  263 (* AND *);
  264 (* EQ *);
  265 (* IF *);
  266 (* ELSE *);
  267 (* WHILE *);
  268 (* TRUE *);
  269 (* FALSE *);
  270 (* READ *);
  271 (* SPAWN *);
  272 (* PRINT *);
  273 (* HALT *);
  274 (* INTDCLR *);
  275 (* LPAREN *);
  276 (* RPAREN *);
  277 (* LCBRCT *);
  278 (* RCBRCT *);
  279 (* SEMICOLON *);
  280 (* COMMA *);
    0 (* EOF *);
    0|]

let yytransl_block = [|
  257 (* INT *);
  258 (* ID *);
    0|]

let yylhs = "\255\255\
\001\000\003\000\004\000\004\000\002\000\002\000\002\000\002\000\
\002\000\002\000\002\000\002\000\006\000\006\000\006\000\006\000\
\006\000\006\000\005\000\005\000\005\000\005\000\005\000\007\000\
\008\000\008\000\000\000"

let yylen = "\002\000\
\002\000\002\000\001\000\002\000\001\000\007\000\005\000\005\000\
\002\000\002\000\004\000\002\000\001\000\001\000\003\000\003\000\
\003\000\003\000\001\000\001\000\003\000\002\000\003\000\002\000\
\001\000\002\000\002\000"

let yydefred = "\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\027\000\000\000\005\000\000\000\000\000\000\000\000\000\
\009\000\000\000\010\000\003\000\000\000\002\000\001\000\000\000\
\013\000\014\000\000\000\000\000\000\000\000\000\019\000\020\000\
\000\000\000\000\000\000\000\000\025\000\000\000\024\000\000\000\
\000\000\000\000\000\000\000\000\011\000\022\000\000\000\000\000\
\000\000\000\000\000\000\026\000\017\000\018\000\000\000\016\000\
\023\000\000\000\000\000\007\000\008\000\000\000\006\000"

let yydgoto = "\002\000\
\010\000\024\000\012\000\022\000\033\000\034\000\019\000\039\000"

let yysindex = "\006\000\
\026\255\000\000\252\254\248\254\000\255\010\255\017\255\021\255\
\004\255\000\000\001\000\000\000\073\255\067\255\067\255\073\255\
\000\000\027\255\000\000\000\000\043\255\000\000\000\000\026\255\
\000\000\000\000\031\255\044\255\013\255\067\255\000\000\000\000\
\011\255\079\255\051\255\045\255\000\000\021\255\000\000\004\255\
\060\255\046\255\073\255\073\255\000\000\000\000\067\255\025\255\
\073\255\025\255\054\255\000\000\000\000\000\000\074\255\000\000\
\000\000\076\255\053\255\000\000\000\000\025\255\000\000"

let yyrindex = "\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\088\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\003\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\007\255\000\000\
\000\000\000\000\065\255\000\000\000\000\000\000\000\000"

let yygindex = "\000\000\
\000\000\255\255\005\000\000\000\250\255\245\255\051\000\000\000"

let yytablesize = 278
let yytable = "\011\000\
\023\000\029\000\004\000\013\000\036\000\003\000\001\000\021\000\
\035\000\015\000\014\000\015\000\004\000\015\000\005\000\043\000\
\044\000\047\000\015\000\006\000\007\000\008\000\018\000\046\000\
\009\000\020\000\015\000\003\000\016\000\015\000\048\000\055\000\
\056\000\041\000\004\000\045\000\005\000\059\000\021\000\017\000\
\057\000\006\000\007\000\008\000\003\000\009\000\009\000\043\000\
\044\000\037\000\038\000\004\000\058\000\005\000\060\000\043\000\
\044\000\047\000\006\000\007\000\008\000\053\000\042\000\040\000\
\051\000\054\000\063\000\025\000\026\000\027\000\050\000\021\000\
\030\000\025\000\026\000\027\000\061\000\044\000\031\000\032\000\
\028\000\043\000\044\000\049\000\021\000\062\000\028\000\012\000\
\052\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\003\000\000\000\000\000\000\000\000\000\000\000\
\000\000\004\000\000\000\005\000\004\000\000\000\000\000\000\000\
\006\000\007\000\008\000\000\000\000\000\009\000"

let yycheck = "\001\000\
\000\000\013\000\000\000\008\001\016\000\002\001\001\000\009\000\
\015\000\003\001\019\001\005\001\009\001\007\001\011\001\003\001\
\004\001\007\001\019\001\016\001\017\001\018\001\002\001\030\000\
\021\001\022\001\020\001\002\001\019\001\023\001\020\001\043\000\
\044\000\003\001\009\001\023\001\011\001\049\000\040\000\023\001\
\047\000\016\001\017\001\018\001\002\001\021\001\021\001\003\001\
\004\001\023\001\024\001\009\001\048\000\011\001\050\000\003\001\
\004\001\007\001\016\001\017\001\018\001\002\001\019\001\021\001\
\020\001\020\001\062\000\001\001\002\001\003\001\020\001\007\001\
\006\001\001\001\002\001\003\001\023\001\004\001\012\001\013\001\
\014\001\003\001\004\001\005\001\020\001\010\001\014\001\000\000\
\038\000\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\002\001\255\255\255\255\255\255\255\255\255\255\
\255\255\009\001\255\255\011\001\010\001\255\255\255\255\255\255\
\016\001\017\001\018\001\255\255\255\255\021\001"

let yynames_const = "\
  PLUS\000\
  DIV\000\
  LESSTHAN\000\
  NOT\000\
  AND\000\
  EQ\000\
  IF\000\
  ELSE\000\
  WHILE\000\
  TRUE\000\
  FALSE\000\
  READ\000\
  SPAWN\000\
  PRINT\000\
  HALT\000\
  INTDCLR\000\
  LPAREN\000\
  RPAREN\000\
  LCBRCT\000\
  RCBRCT\000\
  SEMICOLON\000\
  COMMA\000\
  EOF\000\
  "

let yynames_block = "\
  INT\000\
  ID\000\
  "

let yyact = [|
  (fun _ -> failwith "parser")
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'stmt) in
    Obj.repr(
# 23 "parser.mly"
           ( _1 )
# 226 "parser.ml"
               : Bigstep.stmt))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'block_cnt) in
    Obj.repr(
# 27 "parser.mly"
                   ( _2 )
# 233 "parser.ml"
               : 'block))
; (fun __caml_parser_env ->
    Obj.repr(
# 31 "parser.mly"
         ( EmptyBlock )
# 239 "parser.ml"
               : 'block_cnt))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'stmt) in
    Obj.repr(
# 32 "parser.mly"
              ( StmtBlock (_1) )
# 246 "parser.ml"
               : 'block_cnt))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'block) in
    Obj.repr(
# 35 "parser.mly"
        ( BlockStmt (_1) )
# 253 "parser.ml"
               : 'stmt))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 4 : 'bexp) in
    let _5 = (Parsing.peek_val __caml_parser_env 2 : 'block) in
    let _7 = (Parsing.peek_val __caml_parser_env 0 : 'block) in
    Obj.repr(
# 36 "parser.mly"
                                         ( IfStmt (_3, _5, _7) )
# 262 "parser.ml"
               : 'stmt))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 2 : 'bexp) in
    let _5 = (Parsing.peek_val __caml_parser_env 0 : 'block) in
    Obj.repr(
# 37 "parser.mly"
                                 ( WhileStmt (_3, _5) )
# 270 "parser.ml"
               : 'stmt))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 2 : 'aexp) in
    Obj.repr(
# 38 "parser.mly"
                                     ( PrintStmt (_3) )
# 277 "parser.ml"
               : 'stmt))
; (fun __caml_parser_env ->
    Obj.repr(
# 39 "parser.mly"
                 ( HaltStmt )
# 283 "parser.ml"
               : 'stmt))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'ids_semicolon) in
    Obj.repr(
# 40 "parser.mly"
                        ( DeclarationStmt (_2) )
# 290 "parser.ml"
               : 'stmt))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 3 : string) in
    let _3 = (Parsing.peek_val __caml_parser_env 1 : 'aexp) in
    Obj.repr(
# 41 "parser.mly"
                       ( AssignStmt (_1, _3) )
# 298 "parser.ml"
               : 'stmt))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'stmt) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'stmt) in
    Obj.repr(
# 42 "parser.mly"
            ( SeqStmt (_1, _2) )
# 306 "parser.ml"
               : 'stmt))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 46 "parser.mly"
      ( IntAExp (_1) )
# 313 "parser.ml"
               : 'aexp))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 47 "parser.mly"
     ( IdAExp (_1) )
# 320 "parser.ml"
               : 'aexp))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'aexp) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'aexp) in
    Obj.repr(
# 48 "parser.mly"
                 ( PlusAExp (_1, _3) )
# 328 "parser.ml"
               : 'aexp))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'aexp) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'aexp) in
    Obj.repr(
# 49 "parser.mly"
                ( DivAExp (_1, _3) )
# 336 "parser.ml"
               : 'aexp))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 50 "parser.mly"
               ( IncAExp (_3) )
# 343 "parser.ml"
               : 'aexp))
; (fun __caml_parser_env ->
    Obj.repr(
# 51 "parser.mly"
                     ( ReadAExp )
# 349 "parser.ml"
               : 'aexp))
; (fun __caml_parser_env ->
    Obj.repr(
# 55 "parser.mly"
       ( BoolBExp (true) )
# 355 "parser.ml"
               : 'bexp))
; (fun __caml_parser_env ->
    Obj.repr(
# 56 "parser.mly"
        ( BoolBExp (false) )
# 361 "parser.ml"
               : 'bexp))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'aexp) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'aexp) in
    Obj.repr(
# 57 "parser.mly"
                     ( LessThanBExp (_1, _3) )
# 369 "parser.ml"
               : 'bexp))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'bexp) in
    Obj.repr(
# 58 "parser.mly"
           ( NotBExp (_2) )
# 376 "parser.ml"
               : 'bexp))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'bexp) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'bexp) in
    Obj.repr(
# 59 "parser.mly"
                ( AndBExp (_1, _3) )
# 384 "parser.ml"
               : 'bexp))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : string) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'ids_semicolon_cnt) in
    Obj.repr(
# 63 "parser.mly"
                       ( _1 :: _2 )
# 392 "parser.ml"
               : 'ids_semicolon))
; (fun __caml_parser_env ->
    Obj.repr(
# 67 "parser.mly"
            ( [] )
# 398 "parser.ml"
               : 'ids_semicolon_cnt))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'ids_semicolon) in
    Obj.repr(
# 68 "parser.mly"
                      ( _2 )
# 405 "parser.ml"
               : 'ids_semicolon_cnt))
(* Entry main *)
; (fun __caml_parser_env -> raise (Parsing.YYexit (Parsing.peek_val __caml_parser_env 0)))
|]
let yytables =
  { Parsing.actions=yyact;
    Parsing.transl_const=yytransl_const;
    Parsing.transl_block=yytransl_block;
    Parsing.lhs=yylhs;
    Parsing.len=yylen;
    Parsing.defred=yydefred;
    Parsing.dgoto=yydgoto;
    Parsing.sindex=yysindex;
    Parsing.rindex=yyrindex;
    Parsing.gindex=yygindex;
    Parsing.tablesize=yytablesize;
    Parsing.table=yytable;
    Parsing.check=yycheck;
    Parsing.error_function=parse_error;
    Parsing.names_const=yynames_const;
    Parsing.names_block=yynames_block }
let main (lexfun : Lexing.lexbuf -> token) (lexbuf : Lexing.lexbuf) =
   (Parsing.yyparse yytables 1 lexfun lexbuf : Bigstep.stmt)