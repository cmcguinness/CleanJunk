JsOsaDAS1.001.00bplist00�Vscripto,� / * 
 
 	 A p p l e   m a c O S   M a i l   J u n k   B o x   C l e a n e r 
 	 
 	 P r o g r a m a t i c a l l y   d e l e t e s   m e s s a g e s   i n   t h e   j u n k   b o x   t h a t   m a t c h 
 	 s p e c i f i c   p a t t e r n s . 
 	 
 	 U S E   T H I S   A T   Y O U R   O W N   R I S K .     S U B T L E   C H A N G E S   C A N   H A V E   D R A M A T I C   A F F E C T S . 
 	 S O F T W A R E   I S   A S - I S . 
 	 
 	 W r i t t e n   b y   C h a r l e s   M c G u i n n e s s ,   g i t h u b @ m c g u i n n e s s . u s 
 	 
 	 R e l e a s e d   u n d e r   C r e a t i v e   C o m m o n s   0   ( t h a t ' s   e s s e n t i a l l y   p u b l i c   d o m a i n ) 
 	 S e e   L i c e n s e   f i l e   f o r   d e t a i l s   a n d   d i s c l a i m e r s . . . 
 	 
 * / 
 
 
 
 / * 	 * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * 
 
 	 P r o g r a m   s e t u p 
 	 
 	 * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *   * / 
 
 / / 	 U n c o m m e n t   t h e   n e x t   l i n e   i f   y o u   w i s h   t o   k i c k   o f f   t h e   d e b u g g e r   f i r s t . . . 
 / / 	 d e b u g g e r 
 
 / / 	 T u r n   o n   s c r i p t i n g   a d d i t i o n s 
 a p p   =   A p p l i c a t i o n . c u r r e n t A p p l i c a t i o n ( ) ; 
 a p p . i n c l u d e S t a n d a r d A d d i t i o n s   =   t r u e ; 
 
 
 
 
 
 / * 	 * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * 
 
 	 C o n f i g u r a t i o n   S e c t i o n 
 	 
 	 T h i s   p a r t   d e f i n e s   t h e   r u l e s   o f   w h a t   j u n k   m a i l   g e t s   d e l e t e d . 
 	 
 	 T h i s   i s   t h e   p a r t   y o u ' l l   m o s t   d e f i n i t e l y   w a n t   t o   e d i t   f o r   y o u r 
 	 o w n   p u r p o s e s . 
 	 
 	 * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *   * / 
 
 / / 	 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
 / / 	 A g e   l i m i t   R u l e s 
 / / 
 / / 	 C o n f i g u r e   h o w   o l d   a   p i e c e   o f   j u n k   m a i l   n e e d s   t o   b e   t o   b e   d e l e t e d 
 / / 	 r e g a r d l e s s   o f   a n y t h i n g   e l s e . . . . 	 
 / / 	 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
 v a r 	 d a y _ i n _ m i l l i s e c o n d s   =   1 0 0 0   *   6 0   *   6 0   *   2 4 ; 
 
 / / 	 J u s t   d e l e t e   a n y   p i e c e   o f   j u n k   m a i l   w h e n   i t ' s   o v e r   6 0   d a y s   o f   a g e . . . 
 v a r 	 a g e _ l i m i t   =   6 0   *   d a y _ i n _ m i l l i s e c o n d s ; 
 v a r 	 r i g h t _ n o w   =   n e w   D a t e ( ) ; 
 
 
 
 / / 	 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
 / / 	 S e n d e r   R u l e s 
 / / 
 / / 	 B u i l d   u p   t h e   l i s t   o f   r u l e s   w e ' l l   u s e   t o   m a t c h   c e r t a i n   s p a m   b y   t h e i r   s e n d e r s . 
 / / 	 A   l o t   ( m o s t ? )   o f   s p a m   s e n d e r s   u s e   " f r o m "   n a m e s   t h a t   c o n t a i n   t h e   t o p i c   o f   t h e i r   s p a m 
 / / 	 T h i s   s t r i k e s   m e   a s   m o r e   c e r t a i n   t h a n   s u b j e c t s . . . 
 / / 	 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
 v a r   s e n d e r s   =   [ ] ; 
 s e n d e r s . p u s h ( / @ [ a - z 0 - 9 _ ] + \ . [ a - z 0 - 9 _ ] + \ . t o p / i ) ; 	 / /   t h e   . t o p   t l d   s e e m s   f u l l   o f   s p a m 
 s e n d e r s . p u s h ( / a c c o u n t i n g / i ) ; 
 s e n d e r s . p u s h ( / a d h d / i ) ; 
 s e n d e r s . p u s h ( / a d t a u t h o r i z e d d e a l e r / i ) ; 	 / /   s e c u r i t y   s y s t e m   s o l d   b y   s p a m ,   s e e m s   l e g i t   t o   m e 
 s e n d e r s . p u s h ( / a f r i c a n / i ) ; 
 s e n d e r s . p u s h ( / . a g i n g / i ) ; 
 s e n d e r s . p u s h ( / a l c o h o l / i ) ; 
 s e n d e r s . p u s h ( / a l e r t @ / i ) ; 
 s e n d e r s . p u s h ( / a n a t o m y / i ) ; 
 s e n d e r s . p u s h ( / a n d e r s e n . w i n d o w s / i ) ; 
 s e n d e r s . p u s h ( / a q u a p o n i c / i ) ; 
 s e n d e r s . p u s h ( / a r a b i a n / i ) ; 
 s e n d e r s . p u s h ( / a r t h r i t i s / i ) ; 
 s e n d e r s . p u s h ( / a s i a n / i ) ; 
 s e n d e r s . p u s h ( / a u t o   / i ) ; 
 s e n d e r s . p u s h ( / b a t h t u b / i ) ; 
 s e n d e r s . p u s h ( / b a t t e r y / i ) ; 
 s e n d e r s . p u s h ( / b e v e r l y ( . * ) h i l l s / i ) ; 
 s e n d e r s . p u s h ( / b l a k e   s h e l t o n / i ) ; 
 s e n d e r s . p u s h ( / b l o o d ( . * ) p r e s s u r e / i ) ; 
 s e n d e r s . p u s h ( / b l o o m b e r g - b u s i n e s s w e e k / i ) ; 
 s e n d e r s . p u s h ( / ^ b r a i n / i ) ; 
 s e n d e r s . p u s h ( / ^ b r a n d . n e w / i ) ; 
 s e n d e r s . p u s h ( / b r e a s t   / i ) ; 
 s e n d e r s . p u s h ( / b r a $ / i ) ; 
 s e n d e r s . p u s h ( / ^ b u s i n e s s / i ) ; 
 s e n d e r s . p u s h ( / b u s i n e s s   f u n d i n g / i ) ; 
 s e n d e r s . p u s h ( / c a n c e r / i ) ; 
 s e n d e r s . p u s h ( / c h a r t e r / i ) ; 
 s e n d e r s . p u s h ( / c h e a p ( . * ) i n s u r a n c e / i ) ; 
 s e n d e r s . p u s h ( / c h o l e s t e r o l / i ) ; 
 s e n d e r s . p u s h ( / c o c o n u t / i ) ; 
 s e n d e r s . p u s h ( / c o p d / i ) ; 
 s e n d e r s . p u s h ( / c o s t c o / i ) ; 
 s e n d e r s . p u s h ( / c o u p o n / i ) ; 
 s e n d e r s . p u s h ( / c o u r s e s / i ) ; 
 s e n d e r s . p u s h ( / c r e d i t / i ) ; 
 s e n d e r s . p u s h ( / c r u i s e / i ) ; 
 s e n d e r s . p u s h ( / c u r e / i ) ; 
 s e n d e r s . p u s h ( / d a t i n g / i ) ; 
 s e n d e r s . p u s h ( / d e b t / i ) ; 
 s e n d e r s . p u s h ( / d e g r e e s / i ) ; 
 s e n d e r s . p u s h ( / d i a b e t e s / i ) ; 
 s e n d e r s . p u s h ( / d i a b e t i c / i ) ; 
 s e n d e r s . p u s h ( / D I Y / ) ; 
 s e n d e r s . p u s h ( / d o m a i n ( . { 0 , 2 } ) s e r v i c e / i ) ; 
 s e n d e r s . p u s h ( / d o m a i n ( . { 0 , 2 } ) s u p p o r t / i ) ; 
 s e n d e r s . p u s h ( / d o u g   h i l l / i ) ; 
 s e n d e r s . p u s h ( / d r o n e s / i ) ; 
 s e n d e r s . p u s h ( / d r o z / i ) ; 
 s e n d e r s . p u s h ( / d r . + o z / i ) ; 
 s e n d e r s . p u s h ( / e d u c a t i o n / i ) ; 
 s e n d e r s . p u s h ( / e l e c t r i c i t y / i ) ; 
 s e n d e r s . p u s h ( / e m p l o y e e . m o n i t o r i n g / i ) ; 
 s e n d e r s . p u s h ( / e m v . p a y / i ) ; 
 s e n d e r s . p u s h ( / e r e c t / i ) ; 
 s e n d e r s . p u s h ( / e x c e l [ ^ a - z ] / i ) ; 
 s e n d e r s . p u s h ( / e x e r c i s e / i ) ; 
 s e n d e r s . p u s h ( / \ b f a t [ ^ a - z ] / i ) ; 
 s e n d e r s . p u s h ( / \ b f a t t y / i ) ; 
 s e n d e r s . p u s h ( / ^ f i d e l i t y   l i f e / i ) ; 
 s e n d e r s . p u s h ( / ^ f i g h t / i ) ; 
 s e n d e r s . p u s h ( / f l a s h l i g h t / i ) ; 
 s e n d e r s . p u s h ( / f o r s k o l i n / i ) ; 
 s e n d e r s . p u s h ( / f o r w a r d . h e a d / i ) ; 
 s e n d e r s . p u s h ( / g e n e r a t o r / i ) ; 
 s e n d e r s . p u s h ( / g e n i e . * b r a / i ) ; 
 s e n d e r s . p u s h ( / g o l f / i ) ; 
 s e n d e r s . p u s h ( / g r o c e r y / i ) ; 
 s e n d e r s . p u s h ( / h a i r . * l o s s / i ) ; 
 s e n d e r s . p u s h ( / H A R P / ) ; 
 s e n d e r s . p u s h ( / h e a d l a m p / i ) ; 
 s e n d e r s . p u s h ( / h e a l t h / i ) ; 
 s e n d e r s . p u s h ( / h e a r t ( . { 0 , 1 } ) a t t a c k / i ) ; 
 s e n d e r s . p u s h ( / h o m e ( . * ) w i n d o w / i ) ; 
 s e n d e r s . p u s h ( / i m p l a n t / i ) ; 
 s e n d e r s . p u s h ( / i m p o r t a n t . n e w s / i ) ; 
 s e n d e r s . p u s h ( / ^ i m p r o v e / i ) ; 
 s e n d e r s . p u s h ( / i n   b e d / i ) ; 
 s e n d e r s . p u s h ( / i r s   t a x / i ) ; 
 s e n d e r s . p u s h ( / l a i t h w a i t e s / i ) ; 	 / /   s p a m   f l a v o r e d   w i n e s ,   i   a s s u m e 
 s e n d e r s . p u s h ( / l a s i k / i ) ; 
 s e n d e r s . p u s h ( / l a w y e r / i ) ; 
 s e n d e r s . p u s h ( / l e d   / i ) ; 
 s e n d e r s . p u s h ( / l e n d e r ( . { 0 , 5 } ) o f f e r / i ) ; 
 s e n d e r s . p u s h ( / l i p o s u c t i o n / i ) ; 
 s e n d e r s . p u s h ( / l i v e . c e l l / i ) ; 
 s e n d e r s . p u s h ( / l i v e r   d i s e a s e / i ) ; 
 s e n d e r s . p u s h ( / l o a n / i ) ; 
 s e n d e r s . p u s h ( / l o v e / i ) ; 
 s e n d e r s . p u s h ( / m a t c h \ . c o m / i ) ; 
 s e n d e r s . p u s h ( / m a y o   c l i n i c / i ) ; 
 s e n d e r s . p u s h ( / m e d i c a l . + b i l l i n g / i ) ; 
 s e n d e r s . p u s h ( / m o r t g a g e / i ) ; 
 s e n d e r s . p u s h ( / m b a / i ) ; 
 s e n d e r s . p u s h ( / n e u r o p a t h y / i ) ; 
 s e n d e r s . p u s h ( / n e w   t i r e / i ) ; 
 s e n d e r s . p u s h ( / n u r s i n g / i ) ; 
 s e n d e r s . p u s h ( / o p r a h / i ) ; 
 s e n d e r s . p u s h ( / o p t i m a / i ) ; 
 s e n d e r s . p u s h ( / o v e r s t o c k / i ) ; 
 s e n d e r s . p u s h ( / o z   / i ) ; 
 s e n d e r s . p u s h ( / p a l e o / i ) ; 
 s e n d e r s . p u s h ( / p a t r i o t / i ) ; 
 s e n d e r s . p u s h ( /   p i l l / i ) ; 
 s e n d e r s . p u s h ( / p o w e r . * g e n e r a t o r / i ) ; 
 s e n d e r s . p u s h ( / p r e s e r v e / i ) ; 
 s e n d e r s . p u s h ( / p r e v e n t / i ) ; 
 s e n d e r s . p u s h ( / p r i c e o n o m i c s / i ) ; 
 s e n d e r s . p u s h ( / p r i o r i t y   m e s s a g e / i ) ; 
 s e n d e r s . p u s h ( / p r i v a t e   j e t / i ) ; 
 s e n d e r s . p u s h ( / p r o b i o t i c / i ) ; 
 s e n d e r s . p u s h ( / p r o f i t / i ) ; 
 s e n d e r s . p u s h ( / p r o s t a t e / i ) ; 
 s e n d e r s . p u s h ( / p s y c h o l o g y ( . * ) d e g r e e / i ) ; 
 s e n d e r s . p u s h ( / r a p o s o / i ) ; 
 s e n d e r s . p u s h ( / r e m o d e l / i ) ; 
 s e n d e r s . p u s h ( / r e v e r s e   m o r t g a g e / i ) ; 
 s e n d e r s . p u s h ( / s c h o o l s / i ) ; 
 s e n d e r s . p u s h ( / s e t t l e m e n t / i ) ; 
 s e n d e r s . p u s h ( / s e x u a l / i ) 
 s e n d e r s . p u s h ( / s k i n n y / i ) ; 
 s e n d e r s . p u s h ( / s o l a r / i ) ; 
 s e n d e r s . p u s h ( / s h a r k   t a n k / i ) ; 
 s e n d e r s . p u s h ( / s u r f a c e   p r o s / i ) ; 
 s e n d e r s . p u s h ( / t a t t o o / i ) ; 
 s e n d e r s . p u s h ( / t i m e s h a r e / i ) ; 
 s e n d e r s . p u s h ( / \ b t o p . r a t e d \ b / i ) ; 
 s e n d e r s . p u s h ( / ^ t r a i n i n g / i ) ; 
 s e n d e r s . p u s h ( / t r i p h o u n d / i ) ; 
 s e n d e r s . p u s h ( / t r u m p   a n n o u n c e / i ) ; 
 s e n d e r s . p u s h ( / u n l o c k / i ) ; 
 s e n d e r s . p u s h ( / u r g e n t / i ) ; 
 s e n d e r s . p u s h ( / u s e d . + c a r / i ) ; 
 s e n d e r s . p u s h ( / v e r y   h a n d y / i ) ; 
 s e n d e r s . p u s h ( / v e t e r a n s / i ) ; 
 s e n d e r s . p u s h ( / v o i p / i ) ; 
 s e n d e r s . p u s h ( / w a l k ( . * ) i n ( . * ) t u b / i ) ; 
 s e n d e r s . p u s h ( / w a r r a n t y / i ) ; 
 s e n d e r s . p u s h ( / w a t e r p r o o f i n g / i ) ; 
 s e n d e r s . p u s h ( / w e i g h t / i ) ; 
 s e n d e r s . p u s h ( / w e i r d . * t r i c k / i ) ; 
 s e n d e r s . p u s h ( / w h i t e ( . * ) t e e t h / i ) ; 
 s e n d e r s . p u s h ( / w h i t e ( . * ) s m i l e / i ) ; 
 s e n d e r s . p u s h ( / w i - f i / i ) ; 
 s e n d e r s . p u s h ( / w i n d o w ( . * ) d i s c o u n t / i ) ; 
 s e n d e r s . p u s h ( / w i n d o w ( . * ) s a v i n g s / i ) ; 
 s e n d e r s . p u s h ( / w i r e l e s s / i ) ; 
 s e n d e r s . p u s h ( / w o o d w o r k / i ) ; 
 s e n d e r s . p u s h ( / w r i n k l e s / i ) ; 
 s e n d e r s . p u s h ( / y a c h t / i ) ; 
 s e n d e r s . p u s h ( / y o g a / i ) ; 
 
 
 / / 	 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
 / / 	 S u b j e c t   R u l e s 
 / / 
 / / 	 B u i l d   u p   a   l i s t   o f   e m a i l   s u b j e c t s   ( t h e   F r o m :   l i n e )   t h a t   i n d i c a t e 
 / / 	 t h e   e m a i l   i s   c e r t a i n   s p a m . 
 / / 	 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
 
 v a r   s u b j e c t s   =   [ ] 
 
 s u b j e c t s . p u s h ( / 1 ( . * ) t r i c k / i ) ; 
 s u b j e c t s . p u s h ( / ^ a r e   y o u / i ) ; 
 s u b j e c t s . p u s h ( / a s i a n   w o m e n / i ) ; 
 s u b j e c t s . p u s h ( / b e l l y   f a t / i ) ; 
 s u b j e c t s . p u s h ( / b e l l y   f l a t / i ) ; 
 s u b j e c t s . p u s h ( / b e s t ( . * ) o p t i o n / i ) ; 
 s u b j e c t s . p u s h ( / b l a k e   s h e l t o n / i ) ; 
 s u b j e c t s . p u s h ( / ^ b u s i n e s s / i ) ; 
 s u b j e c t s . p u s h ( / d i s c o u n t   a i r l i n e / i ) ; 
 s u b j e c t s . p u s h ( / C N N   N E W S \ :   / ) ; 
 s u b j e c t s . p u s h ( / d i a b e t e s / i ) ; 
 s u b j e c t s . p u s h ( / ^ d i s c o v e r / i ) ; 
 s u b j e c t s . p u s h ( / ^ d o   y o u / i ) ; 
 s u b j e c t s . p u s h ( / d r \ . o z / i ) ; 
 s u b j e c t s . p u s h ( / d r o z / i ) ; 
 s u b j e c t s . p u s h ( / f i t n e s s / i ) ; 
 s u b j e c t s . p u s h ( / f l a s h l i g h t / i ) ; 
 s u b j e c t s . p u s h ( / h a r p   p r o g r a m / i ) ; 
 s u b j e c t s . p u s h ( / h e r   b r a i n s   o u t / i ) ; 
 s u b j e c t s . p u s h ( / h o m e   w a r r a n t y / i ) ; 
 s u b j e c t s . p u s h ( / ^ h o w   t o / i ) ; 
 s u b j e c t s . p u s h ( / ^ i f   y o u / i ) ; 
 s u b j e c t s . p u s h ( / ^ i n t r o d u c i n g / i ) ; 
 s u b j e c t s . p u s h ( / j u s t   g o t   m y   c h e c k / i ) ; 
 s u b j e c t s . p u s h ( / ^ l e a r n   / i ) ; 
 s u b j e c t s . p u s h ( /   l o a n   / i ) ; 
 s u b j e c t s . p u s h ( / l o n e l y   w i v e s / i ) ; 
 s u b j e c t s . p u s h ( / m a y o   c l i n i c / i ) ; 
 s u b j e c t s . p u s h ( / m i l i t a r y   t a c t i c a l / i ) ; 
 s u b j e c t s . p u s h ( / ^ n a t u r a l   / i ) ; 
 s u b j e c t s . p u s h ( / o b a m a / i ) ; 
 s u b j e c t s . p u s h ( / o n   e l l e n / i ) ; 
 s u b j e c t s . p u s h ( / o r g a s m / i ) ; 
 s u b j e c t s . p u s h ( / p e n i s / i ) ; 
 s u b j e c t s . p u s h ( / p o r n / i ) ; 
 s u b j e c t s . p u s h ( / p o t   i s   n o w   l e g a l / i ) ; 
 s u b j e c t s . p u s h ( / p r i n t e r   i n k / i ) ; 
 s u b j e c t s . p u s h ( / s i n g l e s / i ) ; 
 s u b j e c t s . p u s h ( / s e c u r i t y   s y s t e m / i ) ; 
 s u b j e c t s . p u s h ( / t a t t o o / i ) ; 
 s u b j e c t s . p u s h ( / t h i s   w i l l   g i v e   y o u / i ) ; 
 s u b j e c t s . p u s h ( / t i m e s h a r e / i ) ; 
 s u b j e c t s . p u s h ( / v e r y   i m p o r t a n t   m e s s a g e / i ) ; 
 s u b j e c t s . p u s h ( / w a l k . i n   \ S * t u b / i ) ; 
 s u b j e c t s . p u s h ( / w e i g h t   r e s o l u t i o n / i ) ; 
 s u b j e c t s . p u s h ( /   w e i r d   t r i c k   / i ) ; 
 s u b j e c t s . p u s h ( / ^ w h y   / i ) ; 
 s u b j e c t s . p u s h ( / ^ w o m e n / i ) ; 
 s u b j e c t s . p u s h ( / w o o d w o r k / i ) ; 
 s u b j e c t s . p u s h ( / w o r l d ' s / i ) ; 
 s u b j e c t s . p u s h ( / y o u r   m e d i / i ) ; 
 
 s u b j e c t s . p u s h ( /b / i ) ; 	 	 / /   I   h a v e   n o   i d e a   w h a t   t h i s   i s   a b o u t .   B u t   I   h a d   a   b u n c h   o f   t h e m 
 
 
 
 / / 	 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
 / / 	 N o t   t e c h n i c a l l y   s p a m ,   b u t   I ' m   h a p p y   t o   b e   r i d   o f   t h e m   r e g a r d l e s s 
 / / 	 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
 s e n d e r s . p u s h ( / b l o o m i n g d a l e / i ) ; 
 s e n d e r s . p u s h ( / g i l t / i ) ; 
 s e n d e r s . p u s h ( / j e w e l r y   t e l e v i s i o n / i ) ; 
 s e n d e r s . p u s h ( / l i v i n g s o c i a l / i ) ; 
 s e n d e r s . p u s h ( / o r l a n d o   s e n t i n e l / i ) ; 
 
 / * 	 * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * 
 
 	 E x e c u t i o n   S e c t i o n 
 	 
 	 T h i s   p a r t   a p p l i e s   t h e   r u l e s   t o   e a c h   p i e c e   o f   m a i l   i n   y o u r   j u n k 
 	 e m a i l   b o x   a n d   d e t e r m i n e s   w h e t h e r   t o   d e l e t e   i t   o r   n o t . 
 	 
 	 E d i t   t h i s   o n l y   t o   f i x   b u g s   o r   i n t r o d u c e   n e w   f e a t u r e s 
 	 
 	 * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *   * / 
 
 f u n c t i o n   r u n ( )   { 
 	 / / 	 G e t   t h e   m a i l   a p p l i c a t i o n .     W i l l   l a u n c h   i t   i f   n o t   o p e n 
 	 v a r   m a i l A p p   =   A p p l i c a t i o n ( " M a i l " ) ; 
 
 	 / / 	 G e t   i t   a l l   u p   t o   d a t e   w i t h   c u r r e n t   m a i l . . . 
 	 m a i l A p p . c h e c k F o r N e w M a i l ( ) ; 
 
 	 / / 	 G e t   t h e   j u n k   m a i l   f o l d e r 
 	 v a r   j u n k   =   m a i l A p p . j u n k M a i l b o x ( ) 
 
 	 / / 	 E n u m e r a t e   t h e   l i s t   o f   m e s s a g e s   i n   t h e   f o l d e r 
 	 v a r   m e s s a g e s   =   j u n k . m e s s a g e s ( ) 
 
 
 
 	 / / 	 K e e p   t r a c k   o f   w h a t   w e   d o . . . 
 	 v a r 	 t o t a l _ s u b j e c t _ d e l e t e d   =   0 ; 
 	 v a r 	 t o t a l _ s e n d e r _ d e l e t e d   =   0 ; 
 	 v a r 	 t o t a l _ a g e _ d e l e t e d   =   0 ; 
 
 	 v a r   i ; 
 	 v a r   j ; 
 
 / / 	 L o o p   t h r o u g h   a l l   t h e   m e s s a g e s   i n   t h e   j u n k   m a i l   b o x 
 	 f o r   ( i = 0 ; i < m e s s a g e s . l e n g t h ; i + + )   { 
 	 	 m s g   =   m e s s a g e s [ i ] ; 
 	 
 	 	 / / 	 G e t   t h e   s e n d e r   a n d   s u b j e c t   f o r   a n a l y s i s 
 	 	 s e n d e r   =   m s g . s e n d e r ( ) ; 
 	 	 s u b j e c t   =   m s g . s u b j e c t ( ) ; 
 	 	 m s g _ d a t e   =   m s g . d a t e R e c e i v e d ( ) ; 
 	 
 	 	 / / 	 B y   d e f a u l t ,   w e   d o   n o t   d e l e t e   u n l e s s   t h e r e ' s   a   m a t c h . . . 
 	 	 v a r   d o _ d e l e t e   =   f a l s e ; 
 	 
 	 	 / / 	 C o m p a r e   t h e   s e n d e r   o f   t h i s   e m a i l   t o   t h e   l i s t   o f   r u l e s   w e   h a v e 
 	 	 / / 	 t o   s e e   i f   i t ' s   a   j u n k   e m a i l 
 	 	 f o r   ( j = 0 ; j < s e n d e r s . l e n g t h ; j + + )   { 
 	 	 	 / /   N o t e   t h a t   w e ' r e   u s i n g   r e g u l a r   e x p r e s s i o n s   t o   m a t c h ,   w h i c h   g i v e s   u s   a   l o t 
 	 	 	 / /   o f   v a r i a b i l i t y   i n   t h e   r u l e s   w e   w r i t e . . . 
 	 	 	 v a r   f o u n d   =   s e n d e r s [ j ] . e x e c ( s e n d e r ) ; 
 	 	 	 i f   ( f o u n d   ! =   n u l l )   { 
 	 	 	 	 / /   T h i s   o n l y   w o r k s   i f   y o u ' r e   d e b u g g i n g   w i t h   S a f a r i . . . 
 	 	 	 	 / /   c o n s o l e . l o g ( ' S p a m   s e n d e r :   '   +   s e n d e r ) ; 
 	 	 	 	 d o _ d e l e t e   =   t r u e ; 
 	 	 	 	 t o t a l _ s e n d e r _ d e l e t e d   + =   1 ; 
 	 	 	 	 b r e a k ; 
 	 	 	 } 
 	 	 } 
 	 
 	 	 / / 	 I f   w e   h a v e n ' t   a l r e a d y   d e t e r m i n e d   t h a t   w e ' r e   t o   d e l e t e   t h e   m e s s a g e ,   w e 
 	 	 / / 	 c a n   r u n   t h r o u g h   t h e   l i s t   o f   s u b j e c t s   t o   s e e   i f   t h a t ' s   a   r e a s o n   t o   d e l e t e 
 	 	 / / 	 t h i s   m e s s a g e 
 	 	 i f   ( !   d o _ d e l e t e )   { 
 	 	 	 f o r   ( j = 0 ; j < s u b j e c t s . l e n g t h ; j + + )   { 
 	 	 	 	 v a r   f o u n d   =   s u b j e c t s [ j ] . e x e c ( s u b j e c t ) ; 
 	 	 	 	 i f   ( f o u n d   ! =   n u l l )   { 
 	 	 	 	 	 / /   T h i s   o n l y   w o r k s   i f   y o u ' r e   d e b u g g i n g   w i t h   S a f a r i . . . 
 	 	 	 	 	 / /   c o n s o l e . l o g ( ' S p a m   s u b j e c t :   '   +   s u b j e c t ) ; 
 	 	 	 	 	 d o _ d e l e t e   =   t r u e ; 
 	 	 	 	 	 t o t a l _ s u b j e c t _ d e l e t e d   + =   1 ; 
 	 	 	 	 	 b r e a k ; 
 	 	 	 	 } 
 	 	 	 } 
 	 	 } 
 
 	 	 / / 	 I s   t h i s   m e s s a g e   p a s t   o u r   a g e   l i m i t   c u t   o f f ?   I f   s o ,   b u h - b y e ! 
 	 	 i f   ( !   d o _ d e l e t e )   { 
 	 	 	 i f   ( ( r i g h t _ n o w   -   m s g _ d a t e )   >   a g e _ l i m i t )   { 
 	 	 	 	 d o _ d e l e t e   =   t r u e ; 
 	 	 	 	 t o t a l _ a g e _ d e l e t e d   + =   1 ; 
 	 	 	 } 
 	 	 	 
 	 	 } 
 	 	 
 	 	 i f   ( d o _ d e l e t e )   { 
 	 	 	 m s g . s e t P r o p e r t y ( ' d e l e t e d S t a t u s ' ,   t r u e ) ; 
 
 	 	 } 
 
 	 } 
 
 	 v a r 	 t o t a l _ d e l e t e d   =   t o t a l _ s u b j e c t _ d e l e t e d   +   t o t a l _ s e n d e r _ d e l e t e d   +   t o t a l _ a g e _ d e l e t e d ; 
 	 v a r   r e s u l t   =   " A   t o t a l   o f   "   +   t o t a l _ d e l e t e d   +   "   j u n k   e m a i l s   d e l e t e d : \ n "   +   t o t a l _ s u b j e c t _ d e l e t e d   +   "   b y   S u b j e c t ,   "   +   t o t a l _ s e n d e r _ d e l e t e d   +   "   b y   S e n d e r ,   "   +   t o t a l _ a g e _ d e l e t e d   +   "   b y   A g e . " ; 
 
 	 / / 	 O n   t h e   o f f   c h a n c e   y o u   w a n t   t o   h e a r   t h e   r e s u l t s   s p o k e n ,   u n c o m m e n t   t h e   n e x t   l i n e 
 	 / / 	 a p p . s a y ( r e s u l t ) ; 
 	 
 	 a p p . d i s p l a y D i a l o g ( r e s u l t ) ; 
 } 
                              Y2jscr  ��ޭ