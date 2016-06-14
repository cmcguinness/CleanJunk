JsOsaDAS1.001.00bplist00�Vscripto� / * 
 
 	 A p p l e   m a c O S   M a i l   J u n k   B o x   C l e a n e r 
 	 
 	 P r o g r a m a t i c a l l y   d e l e t e s   m e s s a g e s   i n   t h e   j u n k   b o x   t h a t   m a t c h 
 	 s p e c i f i c   p a t t e r n s . 
 	 
 	 U S E   T H I S   A T   Y O U R   O W N   R I S K .     S U B T L E   C H A N G E S   C A N   H A V E   D R A M A T I C   A F F E C T S . 
 	 
 * / 
 
 
 
 / / 	 U n c o m m e n t   t h e   n e x t   l i n e   i f   y o u   w i s h   t o   k i c k   o f f   t h e   d e b u g g e r   f i r s t . . . 
 / /   d e b u g g e r 
 
 v a r   m a i l A p p   =   A p p l i c a t i o n ( " M a i l " ) 
 
 v a r   j u n k   =   m a i l A p p . j u n k M a i l b o x ( ) 
 
 v a r   m e s s a g e s   =   j u n k . m e s s a g e s ( ) 
 
 
 v a r   s e n d e r s   =   [ ] ; 
 s e n d e r s . p u s h ( / @ [ a - z 0 - 9 _ ] + \ . [ a - z 0 - 9 _ ] + \ . t o p / i ) ; 	 / /   t h e   . t o p   t l d   s e e m s   f u l l   o f   s p a m 
 s e n d e r s . p u s h ( / a c c o u n t i n g / i ) ; 
 s e n d e r s . p u s h ( / a d h d / i ) ; 
 s e n d e r s . p u s h ( / a d t a u t h o r i z e d d e a l e r / i ) ; 	 / /   s e c u r i t y   s y s t e m   s o l d   b y   s p a m ,   s e e m s   l e g i t   t o   m e 
 s e n d e r s . p u s h ( / a f r i c a n / i ) ; 
 s e n d e r s . p u s h ( / . a g i n g / i ) ; 
 s e n d e r s . p u s h ( / a l c o h o l / i ) ; 
 s e n d e r s . p u s h ( / a l e r t @ / i ) ; 
 s e n d e r s . p u s h ( / a r a b i a n / i ) ; 
 s e n d e r s . p u s h ( / a r t h r i t i s / i ) ; 
 s e n d e r s . p u s h ( / a s i a n / i ) ; 
 s e n d e r s . p u s h ( / a u t o   / i ) ; 
 s e n d e r s . p u s h ( / b a t h t u b / i ) ; 
 s e n d e r s . p u s h ( / b a t t e r y / i ) ; 
 s e n d e r s . p u s h ( / b e v e r l y   h i l l s / i ) ; 
 s e n d e r s . p u s h ( / b l a k e   s h e l t o n / i ) ; 
 s e n d e r s . p u s h ( / b l o o m b e r g - b u s i n e s s w e e k / i ) ; 
 s e n d e r s . p u s h ( / b r e a s t   / i ) ; 
 s e n d e r s . p u s h ( / c a n c e r / i ) ; 
 s e n d e r s . p u s h ( / c h a r t e r / i ) ; 
 s e n d e r s . p u s h ( / c o p d / i ) ; 
 s e n d e r s . p u s h ( / c o s t c o / i ) ; 
 s e n d e r s . p u s h ( / c o u p o n / i ) ; 
 s e n d e r s . p u s h ( / c o u r s e s / i ) ; 
 s e n d e r s . p u s h ( / c r e d i t / i ) ; 
 s e n d e r s . p u s h ( / c r u i s e / i ) ; 
 s e n d e r s . p u s h ( / c u r e / i ) ; 
 s e n d e r s . p u s h ( / d a t i n g / i ) ; 
 s e n d e r s . p u s h ( / d e g r e e s / i ) ; 
 s e n d e r s . p u s h ( / d i a b e t e s / i ) ; 
 s e n d e r s . p u s h ( / d i a b e t i c / i ) ; 
 s e n d e r s . p u s h ( / d r o z / i ) ; 
 s e n d e r s . p u s h ( / d r . + o z / i ) ; 
 s e n d e r s . p u s h ( / e d u c a t i o n / i ) ; 
 s e n d e r s . p u s h ( / e l e c t r i c i t y / i ) ; 
 s e n d e r s . p u s h ( / f l a s h l i g h t / i ) ; 
 s e n d e r s . p u s h ( / g o l f / i ) ; 
 s e n d e r s . p u s h ( / g r o c e r y / i ) ; 
 s e n d e r s . p u s h ( / H A R P / ) ; 
 s e n d e r s . p u s h ( / h e a d l a m p / i ) ; 
 s e n d e r s . p u s h ( / h e a l t h / i ) ; 
 s e n d e r s . p u s h ( / i m p l a n t / i ) ; 
 s e n d e r s . p u s h ( / i r s   t a x / i ) ; 
 s e n d e r s . p u s h ( / l a i t h w a i t e s / i ) ; 	 / /   s p a m   f l a v o r e d   w i n e s ,   i   a s s u m e 
 s e n d e r s . p u s h ( / l a s i k / i ) ; 
 s e n d e r s . p u s h ( / l a w y e r / i ) ; 
 s e n d e r s . p u s h ( / l e d   / i ) ; 
 s e n d e r s . p u s h ( / l o v e / i ) ; 
 s e n d e r s . p u s h ( / m a t c h \ . c o m / i ) ; 
 s e n d e r s . p u s h ( / m a y o   c l i n i c / i ) ; 
 s e n d e r s . p u s h ( / m o r t g a g e / i ) ; 
 s e n d e r s . p u s h ( / m b a / i ) ; 
 s e n d e r s . p u s h ( / n e w   t i r e / i ) ; 
 s e n d e r s . p u s h ( / n u r s i n g / i ) ; 
 s e n d e r s . p u s h ( / o p r a h / i ) ; 
 s e n d e r s . p u s h ( / o p t i m a / i ) ; 
 s e n d e r s . p u s h ( / o v e r s t o c k / i ) ; 
 s e n d e r s . p u s h ( / o z   / i ) ; 
 s e n d e r s . p u s h ( / p a l e o / i ) ; 
 s e n d e r s . p u s h ( / p a t r i o t / i ) ; 
 s e n d e r s . p u s h ( / p r e s e r v e / i ) ; 
 s e n d e r s . p u s h ( / p r e v e n t / i ) ; 
 s e n d e r s . p u s h ( / p r i v a t e   j e t / i ) ; 
 s e n d e r s . p u s h ( / p r o b i o t i c / i ) ; 
 s e n d e r s . p u s h ( / p r o f i t / i ) ; 
 s e n d e r s . p u s h ( / r a p o s o / i ) ; 
 s e n d e r s . p u s h ( / r e v e r s e   m o r t g a g e / i ) ; 
 s e n d e r s . p u s h ( / s c h o o l s / i ) ; 
 s e n d e r s . p u s h ( / s e t t l e m e n t / i ) ; 
 s e n d e r s . p u s h ( / s o l a r / i ) ; 
 s e n d e r s . p u s h ( / s h a r k   t a n k / i ) ; 
 s e n d e r s . p u s h ( / t i m e s h a r e / i ) ; 
 s e n d e r s . p u s h ( / t r u m p   a n n o u n c e / i ) ; 
 s e n d e r s . p u s h ( / u r g e n t / i ) ; 
 s e n d e r s . p u s h ( / v e t e r a n s / i ) ; 
 s e n d e r s . p u s h ( / v o i p / i ) ; 
 s e n d e r s . p u s h ( / w a r r a n t y / i ) ; 
 s e n d e r s . p u s h ( / w a t e r p r o o o f i n g / i ) ; 
 s e n d e r s . p u s h ( / w e i g h t / i ) ; 
 s e n d e r s . p u s h ( / w e i r d . * t r i c k / i ) ; 
 s e n d e r s . p u s h ( / w i - f i / i ) ; 
 s e n d e r s . p u s h ( / w i r e l e s s / i ) ; 
 s e n d e r s . p u s h ( / w r i n k l e s / i ) ; 
 s e n d e r s . p u s h ( / y a c h t / i ) ; 
 
 v a r   s u b j e c t s   =   [ ] 
 
 s u b j e c t s . p u s h ( / a s i a n   w o m e n / i ) ; 
 s u b j e c t s . p u s h ( / b e l l y   f a t / i ) ; 
 s u b j e c t s . p u s h ( / b e l l y   f l a t / i ) ; 
 s u b j e c t s . p u s h ( / b l a k e   s h e l t o n / i ) ; 
 s u b j e c t s . p u s h ( / d i s c o u n t   a i r l i n e / i ) ; 
 s u b j e c t s . p u s h ( / C N N   N E W S \ :   / ) ; 
 s u b j e c t s . p u s h ( / d i a b e t e s / i ) ; 
 s u b j e c t s . p u s h ( / d r \ . o z / i ) ; 
 s u b j e c t s . p u s h ( / d r o z / i ) ; 
 s u b j e c t s . p u s h ( / h a r p   p r o g r a m / i ) ; 
 s u b j e c t s . p u s h ( / h e r   b r a i n s   o u t / i ) ; 
 s u b j e c t s . p u s h ( / h o m e   w a r r a n t y / i ) ; 
 s u b j e c t s . p u s h ( / j u s t   g o t   m y   c h e c k / i ) ; 
 s u b j e c t s . p u s h ( /   l o a n   / i ) ; 
 s u b j e c t s . p u s h ( / l o n e l y   w i v e s / i ) ; 
 s u b j e c t s . p u s h ( / m i l i t a r y   t a c t i c a l / i ) ; 
 s u b j e c t s . p u s h ( / o b a m a / i ) ; 
 s u b j e c t s . p u s h ( / o n   e l l e n / i ) ; 
 s u b j e c t s . p u s h ( / o r g a s m / i ) ; 
 s u b j e c t s . p u s h ( / p o t   i s   n o w   l e g a l / i ) ; 
 s u b j e c t s . p u s h ( / s i n g l e s / i ) ; 
 s u b j e c t s . p u s h ( / t h i s   w i l l   g i v e   y o u / i ) ; 
 s u b j e c t s . p u s h ( / t i m e s h a r e / i ) ; 
 s u b j e c t s . p u s h ( / w a l k   i n   \ S * t u b / i ) ; 
 s u b j e c t s . p u s h ( / w e i g h t   r e s o l u t i o n / i ) ; 
 s u b j e c t s . p u s h ( /   w e i r d   t r i c k   / i ) ; 
 
 s u b j e c t s . p u s h ( /b / i ) ; 	 	 / /   I   h a v e   n o   i d e a   w h a t   t h i s   i s   a b o u t . 
 
 
 t o t a l _ d e l e t e d   =   0 ; 
 
 v a r   i ; 
 
 f o r   ( i = 0 ; i < m e s s a g e s . l e n g t h ; i + + )   { 
 	 m s g   =   m e s s a g e s [ i ] ; 
 	 s e n d e r   =   m s g . s e n d e r ( ) ; 
 	 s u b j e c t   =   m s g . s u b j e c t ( ) ; 
 	 v a r   d o _ d e l e t e   =   f a l s e ; 
 	 v a r   j ; 
 	 f o r   ( j = 0 ; j < s e n d e r s . l e n g t h ; j + + )   { 
 	 	 v a r   f o u n d   =   s e n d e r s [ j ] . e x e c ( s e n d e r ) ; 
 	 	 i f   ( f o u n d   ! =   n u l l )   { 
 	 	 	 c o n s o l e . l o g ( ' S p a m   s e n d e r :   '   +   s e n d e r ) ; 
 	 	 	 d o _ d e l e t e   =   t r u e ; 
 	 	 	 b r e a k ; 
 	 	 } 
 	 } 
 	 f o r   ( j = 0 ; j < s u b j e c t s . l e n g t h ; j + + )   { 
 	 	 v a r   f o u n d   =   s u b j e c t s [ j ] . e x e c ( s u b j e c t ) ; 
 	 	 i f   ( f o u n d   ! =   n u l l )   { 
 	 	 	 c o n s o l e . l o g ( ' S p a m   s u b j e c t :   '   +   s u b j e c t ) ; 
 	 	 	 d o _ d e l e t e   =   t r u e ; 
 	 	 	 b r e a k ; 
 	 	 } 
 	 } 
 	 
 	 i f   ( d o _ d e l e t e )   { 
 	 	 m s g . s e t P r o p e r t y ( ' d e l e t e d S t a t u s ' ,   t r u e ) ; 
 	 	 t o t a l _ d e l e t e d   + =   1 ; 
 	 } 
 
 } 
 
 " A   t o t a l   o f   "   +   t o t a l _ d e l e t e d   +   "   j u n k   e m a i l s   d e l e t e d . "                              "jscr  ��ޭ